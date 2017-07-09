require 'test_helper'

class StringBetweenTest < Minitest::Test

  SUBJECT = '<body><p>paragraph "one"</p><br><p>paragraph "two"</p><br></body>'

  DELIMITERS = [
    ['<body>', '</body>'],
    ['<p>', '</p>'],
    ['<br>', '<br>'],
    ['<', '>'],
    ['>', '<'],
    ['"', '"'],
    ['<body>', ''],
    ['', '</body>'],
    ['<p>', ''],
    ['', '</p>'],
    ['', ''],
    ['<h1>', '</h1>'],
    ['<body>', '<h1>'],
    ['</h1>', '<p>'],
  ]

  def test_delimiters
    DELIMITERS.each do |open, close|
      assert_invariants SUBJECT, open, close, SUBJECT.between(open, close)
    end
  end


  private

  def assert_invariants(subject, open, close, result)
    if subject.index(open) && subject.index(close, subject.index(open) + open.length)
      refute_same subject, result

      assert subject.include?("#{open}#{result}#{close}")

      assert_equal subject.index(open), subject.index("#{open}#{result}"),
        "Opening delimiter must occur exactly once before result"

      assert_equal 1, "#{result}#{close}".scan(close).length,
        "Non-empty closing delimiter must not occur within result"
    else
      assert_nil result
    end
  end


end
