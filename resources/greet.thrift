struct Message {
 1: string msg = "default message"
}

service GreetingService {
 Message greet(1: Message msg)
}
