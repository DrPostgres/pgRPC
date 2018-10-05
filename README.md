pgRPC
=====

Publish Postgres database via RPC.

Project Status
==============

TL;DR: Abandoned, in favour of PostgREST project.

I read up PostgREST project's documentaion, and it seems to have already solved
many of the problems I wanted to solve, especially with it's support for
exposing Postgres functions as `/rpc` endpoint.

PostgREST provides many features that I was hoping to implement here (JWT,
publish Postgres functions as `/rpc` endpoint, discoverability, etc.). It seems
featureful and robust for production use.
