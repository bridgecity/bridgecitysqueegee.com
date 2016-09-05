# Instructions:

1. Open the project directory in your terminal, and checkout your working
   branch; e.g.:

   ~~~shell
   $ cd ~/Projects/bridgecitysqueegee.com
   $ git checkout training
   ~~~

2. Update your bundle

   ~~~shell
   $ bundle install
   ~~~

3. Start middleman

   ~~~shell
   $ bundle exec middleman
   ~~~

4. View your locally running copy of the website by visiting
   [http://localhost:4567](http://localhost:4567).

5. Make changes to the files using your favorite editor...

6. Commit your changes; e.g.:

   ~~~shell
   $ git add .
   $ git commit -m "I made some changes!"
   ~~~

7. Build the website

   ~~~shell
   $ bundle exec rake build
   ~~~

8. Commit the changes to the `gh-pages` branch:

   ~~~shell
   $ bundle exec rake commit
   ~~~

9. Publish the changes

   ~~~shell
   $ git push origin gh-pages
   ~~~

10. Switch back to your working branch

   ~~~shell
   $ git checkout training
   ~~~
