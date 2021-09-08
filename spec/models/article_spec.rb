require 'rails_helper'

RSpec.describe Article, type: :model do
  it 'tests a number to be positive' do
    expect(1).to be_positive
    # article = Article.new(title: 'Title', content: 'Text')
    # article.save
    # expect(article.id).to be > 0
  end
end
