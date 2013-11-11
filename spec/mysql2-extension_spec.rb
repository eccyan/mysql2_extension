require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Mysql2Extensions do
  before(:each) do
    @users = []
    @users.push nil
    @users.push Person.create!(id: 1, name: "Shugo Ushio") 
    @users.push Person.create!(id: 2, name: "Atsushi Mizoue")
    @users.push Person.create!(id: 3, name: "Atsushi Kurosawa")
    @users.push Person.create!(id: 4, name: "Yuuki Shichiku")
  end

  context ActiveRecord::Relation do
    context '#use_index'do
      let(:user) { @users[1] }

      it "appends USE INDEX syntax"do
        expect(Person.where(id: user.id).use_index.to_sql).to match(/USE INDEX/)
      end
      it "finds users"do
        expect(Person.where(id: user.id).use_index).to_not be_blank
      end
    end
  end

  context ActiveRecord::Base do
    context '#use_index'do
      it "appends USE INDEX syntax"do
        expect(Person.use_index.to_sql).to match(/USE INDEX/)
      end
      it "finds users"do
        expect(Person.use_index).to_not be_blank
      end
    end
  end

  context Arel do
    it "set quantifier to CALC_FOUND_ROWS" do
      project = Person.arel_table.project(Arel.star)
      project.calc_found_rows
      expect(project.to_sql).to match(/CALC_FOUND_ROWS/)
    end
  end
end
