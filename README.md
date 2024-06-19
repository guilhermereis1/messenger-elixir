## This README provides a basic guide to configure and run the `Messenger` application for enabling communication between two nodes using Elixir. Be sure to customize the IPs, node names, and cookies as needed for your specific environment.


### Node 1
```
iex --sname node1 --cookie secret_cookie -S mix
```

### Node 2
```
iex --sname node2 --cookie secret_cookie -S mix
```

### Node 1
```
Node.connect(:"node2@your-user")

// return true if success
```

or

### Node 2
```
Node.connect(:"node2@your-user")

// return true if success
```

### List active connections

```
Node.list()

return [:"node1@your-user"]
```

### Send message

```
node_1 - MessengerServer.send_message(:"node1@your-user", "Hello from node1!")

node_2 - MessengerServer.send_message(:"node2@your-user", "Hi from node2!")
```