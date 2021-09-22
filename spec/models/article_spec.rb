require 'rails_helper'

RSpec.describe Article, type: :model do
  describe '#validations' do
    let(:article) { build(:article) }
    it 'tests that factory is valid' do
      expect(article).to be_valid
    end
    it 'has an invalida title' do
      article.title = ''
      expect(article).not_to be_valid
      expect(article.errors[:title]).to include("can't be blank")
      # article = Article.new(title: 'Title', content: 'Text')
      # article.save
      # expect(article.id).to be > 0
    end
  end

  # it 'tests article' do
  #   article = FactoryBot.create(:article) # can add factorybot to configs so doesn't need to write here
  #   expect(article.title).to eq('Sample article')
  # end
end
