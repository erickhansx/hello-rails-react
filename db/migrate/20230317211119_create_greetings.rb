class CreateGreetings < ActiveRecord::Migration[7.0]
  def change
    create_table :greetings do |t|
      t.text :message

      t.timestamps
    end
    greetings = [
      { message: "Hello, how are you?" },
      { message: "Hi there, nice to meet you!" },
      { message: "Welcome, it's great to have you here!" },
      { message: "Hey, what's up?" },
      { message: "Greetings and salutations!" }
    ]
    
    greetings.each do |greeting|
      Greeting.create(greeting)
    end
  end
end
