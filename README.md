# Pandemic -- the Prototype

Note: This project is in progress!

Several virulent diseases have broken out simultaneously all over the world!
The players, disease-fighting specialists, must develop vaccine as soon as possible.
Join the antibodies and get to the vaccine by solving puzzle.

This game has been inspired by:

  * Pandemic board game
  * 2048 (puzzle game)


Prerequisites
---------------

To deploy on a server, you need to install some dependencies.

  * [Elixir](http://elixir-lang.org/docs.html) >= 1.3
    * [Erlang](https://www.erlang.org/) (Elixir depends on)
  * [Hex](https://hex.pm/) (the package manager for the Erlang ecosystem)
  * [Phoenix](http://www.phoenixframework.org/) (MVC framework of Elixir)
  * [Brunch.io](http://brunch.io/) (to compile static assets)
    * [Node.js](https://nodejs.org/en/)
    * [npm](https://www.npmjs.com/) (Node.js' package ecosystem)
  * [PostgreSQL](https://www.postgresql.org/) (Object-RDBMS)


Up and Running
---------------

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install brunch (Node.js package) with `npm install`
  * Compile static assets a sort of .js and .css with `npm run build`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please
[check our deployment guides](http://www.phoenixframework.org/docs/deployment).


Game Implementation
---------------

The game is created by JavaScript (including ES6) and each player
connection is realized by Phoenix's channel and Node.js' WebSocket.

By the way, though Node.js allow us to realize this game completely,
I don't like Node.js tend to use a MongoDB, and I tired of following
an ever growing ecosystem of rich and complicated JavaScript applications.
Ruby on Rails has a great opportunity, but when it comes to using WebSocket,
Rails must depends on Redis and I am not familiar with it.

Considering deployment on Heroku, An add-ons like MongoDB and Redis is
a big barrier for free plan user.
That's why I chose Elixir and Phoenix framework for this project.


### Flow

1. Select SINGLE PLAYER or MULTIPLAYER
2. Players will be assigned a color of antibodies at random
3. Awaiting another player (max player is 4)
4. Start game
5. Each event, for instance sharing disease information, is emitted via
   WebSocket and elixir's channel.
6. After game finished, scored to DB.


### Design

In the diagram that follows, Pascal case represent Class name and
Camel case represent specific object or method.

~~~
TODO:

-+|<∨∧>
~~~


Learn more about Phoenix
---------------

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
