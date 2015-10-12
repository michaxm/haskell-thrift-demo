import qualified Data.Text.Lazy as TL
import GreetingService_Iface
import GreetingService
import Greet_Types
import Thrift.Server (runBasicServer)

data GREET = GREET
instance GreetingService_Iface GREET where
  greet GREET msg@(Message m) = do
    putStrLn ("got " ++ (TL.unpack m))
    putStrLn "sending pong"
    return msg{ message_msg = (TL.pack "pong") }

main :: IO ()
main = runBasicServer GREET process 7911
