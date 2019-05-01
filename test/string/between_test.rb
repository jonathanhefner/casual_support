require "test_helper"

class StringBetweenTest < Minitest::Test

  STRING = "<body><p>paragraph one</p><br><p>paragraph two</p><br></body>"

  DELIMITERS = [
    ["<body>", "</body>"],
    ["<p>", "</p>"],
    ["<br>", "<br>"],
    ["<", ">"],
    [">", "<"],
    [""", """],
    ["<body>", ""],
    ["", "</body>"],
    ["<p>", ""],
    ["", "</p>"],
    ["", ""],
    ["<h1>", "</h1>"],
    ["<body>", "<h1>"],
    ["</h1>", "<p>"],
  ]

  def test_between
    DELIMITERS.each do |before, after|
      assert_invariants STRING, before, after, STRING.between(before, after)
    end
  end

  private

  def assert_invariants(string, before, after, result)
    if string.index(before) && string.index(after, string.index(before) + before.length)
      refute_same string, result

      assert string.include?("#{before}#{result}#{after}")

      assert_equal string.index(before), string.index("#{before}#{result}"),
        "Opening delimiter must occur exactly once before result"

      assert_equal 1, "#{result}#{after}".scan(after).length,
        "Non-empty closing delimiter must not occur within result"
    else
      assert_nil result
    end
  end


end
