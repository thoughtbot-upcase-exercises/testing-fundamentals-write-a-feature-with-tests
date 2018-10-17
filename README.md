# Rails Testing Exercises / Testing Fundamentals Write A Feature With Tests

Hey there! We're [thoughtbot](https://thoughtbot.com), a design and
development consultancy that brings your digital product ideas to life.
We also love to share what we learn.

This coding exercise comes from [Upcase](https://thoughtbot.com/upcase),
the online learning platform we run. It's part of the
[Rails Testing Exercises](https://thoughtbot.com/upcase/rails-testing-exercises) course and is just one small sample of all
the great material available on Upcase, so be sure to visit and check out the rest.

## Exercise Intro

Writing tests for existing code is a good way to learn RSpec, Capybara, and other tools, but in the real world, you'll usually write tests as you add production code.

In this exercise, you'll add enhance a small Rails applications by adding the ability edit existing people. You'll implement the necessary actions and views in the Rails application, writing tests as you go.

## Instructions

To start, you'll want to clone and run the setup script for the repo

    git clone git@github.com:thoughtbot-upcase-exercises/testing-fundamentals-write-a-feature-with-tests.git
    cd testing-fundamentals-write-a-feature-with-tests
    bin/setup

Add `edit` and `update` actions to `PeopleController` so that users can edit existing people. Add the following tests:

* An integration test which uses Capybara to verify the new feature.
* A controller test which uses RSpec to verify the new controller actions.

Make sure your tests are passing by running `rake`.

## Featured Solution

Check out the [featured solution branch](https://github.com/thoughtbot-upcase-exercises/testing-fundamentals-write-a-feature-with-tests/compare/featured-solution#toc) to
see the approach we recommend for this exercise.

## Forum Discussion

If you find yourself stuck, be sure to check out the associated
[Upcase Forum discussion](https://forum.upcase.com/t/testing-fundamentals-write-a-feature-with-tests/4570)
for this exercise to see what other folks have said.

## Next Steps

When you've finished the exercise, head on back to the
[Rails Testing Exercises](https://thoughtbot.com/upcase/rails-testing-exercises) course to find the next exercise,
or explore any of the other great content on
[Upcase](https://thoughtbot.com/upcase).

## License

testing-fundamentals-write-a-feature-with-tests is Copyright © 2015-2018 thoughtbot, inc. It is free software,
and may be redistributed under the terms specified in the
[LICENSE](/LICENSE.md) file.

## Credits

![thoughtbot](https://presskit.thoughtbot.com/assets/images/logo.svg)

This exercise is maintained and funded by
[thoughtbot, inc](http://thoughtbot.com/community).

The names and logos for Upcase and thoughtbot are registered trademarks of
thoughtbot, inc.
