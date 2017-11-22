require 'minitest/autorun'

require_relative 'transaction'

class TransactionTest < Minitest::Test
#  def test_prompt_for_payment
#    transaction = Transaction.new(30)
#    input = StringIO.new('30\n')
#    transaction.prompt_for_payment(input: input)
#    assert_equal 30, transaction.amount_paid
#  end
#
# amended for cleaner test output
  def test_prompt_for_payment
    transaction = Transaction.new(30)
    input = StringIO.new('30\n')
    output = StringIO.new
    transaction.prompt_for_payment(input: input, output: output)
    assert_equal transaction.amount_paid, 30
  end
end
