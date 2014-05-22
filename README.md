http://guides.rubyonrails.org/caching_with_rails.html#conditional-get-support

`fresh_when` and `stale?` are the same implement way, but `fresh_when` is a fast helper method, `stale?` is a method that render or store cache with different condition.

If you don't have any special response processing and are using the default rendering mechanism (i.e. you're not using respond_to or calling render yourself) then you've got an easy helper in fresh_when
