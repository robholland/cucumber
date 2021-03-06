require 'spec_helper'

module Cucumber::Ast
  describe OutlineTable do
    describe OutlineTable::ExampleRow do
      describe "a header row" do
        before(:each) do
          @row = OutlineTable::ExampleRow.new(
            double('table', :index => 0),
            [double('cell', :status= => nil, :accept => nil)]
          )
        end

        it "should raise an error if you try to call #failed?" do
          @row.accept_plain double('visitor', :visit_table_cell => nil)
          lambda{ @row.failed? }.should raise_error(NoMethodError, /cannot pass or fail/)
        end
      end
    end
  end
end
