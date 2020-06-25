# controlshift-oauth-example
Very, very, simple example code for using OAuth API from ruby

## Usage

Use .env.sample as a template for creating a .env file with the appropriate values for your ControlShift application. 

```
bundle install
ruby example.rb
```

Follow the prompts to convert the authorization code into a token that can be used to consume the API. 

If everything is working correctly, should get back a response like this:

```ruby
{"organisation"=>{"slug"=>"foo", "petitions_count"=>3, "signatures_count"=>4, "blast_emails_count"=>0, "members_count"=>5}}
```
