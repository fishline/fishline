# NAME
#   spec.functions - retrieve functions in the global scope that match ^key
#
# SYNOPSIS
#   spec.functions <key>
#
# EXAMPLES
#   spec.functions "describe_"
#   spec.functions "before_"
#/
function spec.functions -a key
  if [ -n "$key" ]
    # Skip empty strings to avoid fetching all global functions.
    functions -n | grep \^"$key"
  end
end
