
/* Create a role to own all RPC objects */
create role rpc nologin;

/* All RPC objects will reside in this schema */
create schema if not exists rpc authorization rpc;

/* Create all objects in the RPC schema */
set search_path = rpc;

/* This function returns the RPC schema's contents */
create function get_schema() returns json as $$
begin
    return null;
end;
$$ language plpgsql;


