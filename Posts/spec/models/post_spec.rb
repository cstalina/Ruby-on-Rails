require 'rails_helper'

RSpec.describe Post, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  # Verifica faptul ca validarea nu salveaza in baza de date o postare incorecta
  it "should check validations" do
    post = Post.new
    expect(post.save).to be false
  end

   #Verifica faptul ca validarea salveaza in baza de date o postare corecta
  it "should save a correct post to the database" do
    post = Post.new(title: "Test title", content: "Content title")
    expect(post.save).to be true

  end
end
