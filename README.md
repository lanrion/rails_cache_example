# Write

```ruby

Started GET "/users/" for 127.0.0.1 at 2014-05-21 17:38:18 +0800
  ActiveRecord::SchemaMigration Load (0.3ms)  SELECT `schema_migrations`.* FROM `schema_migrations`
Processing by UsersController#index as HTML
  User Load (0.3ms)  SELECT `users`.* FROM `users`
  Rendered users/index.html.erb within layouts/application (12.6ms)
Write page /home/lanrion/Projects/exc/rails_cache_example/public/users.html (1.2ms)
Completed 200 OK in 78ms (Views: 50.3ms | ActiveRecord: 2.2ms)

```

# Read:

之后再请求时，变不会再发生任何的处理，直接返回缓存好的HTML。


# 什么时候失效

在用户做了更新或者新增数据时，做一次expired即可，再次访问时，会重新重新一份cache

```ruby
after_action :expire_page_cache, only: [:create, :update]

def expire_page_cache
  expire_page action: 'index'
end
```
