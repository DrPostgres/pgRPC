
/* Create a role to own all RPC objects */
create role rpc nologin;

/* All RPC objects will reside in this schema */
create schema if not exists rpc authorization rpc;

/* Create all objects in the RPC schema */
set search_path = rpc;

/*
    This function returns the RPC schema's contents.

    Returns a JSON array of Method objects.

    [ <Method>, <Method> ]

    The Method object has the following structure:
    {
        "name"       : "<name>",
        "params"     : [ <ParamDescriptor>, <ParamDescriptor> ],
        "needs_auth" : true/false
    }

    The ParamDescriptor object has the following sructure:
    {
        "name":"<name>",
        "type":"<data type>",
        "mode": "<in/out/inout>",
        "default": "<default value"
    }
 */
create or replace function get_schema() returns json as $$
begin
    /*
     * TODO: Construct result based on query of pg_catalog.pg_proc and join with
     * the "restricted_methods"  table.
     */
    return '[{"name":"get_schema", "params":[], "needs_auth": false}]'::json;
end;
$$ language plpgsql;

/*
 * TODO: Define a table ("restricted_methods"?) to record the functions that are
 * available to an unauthorized user.
 */
