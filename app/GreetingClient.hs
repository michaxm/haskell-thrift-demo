import qualified Data.Text.Lazy as TL
import Network (PortID(..))
import Greet_Types
import GreetingService_Client
import Thrift.Transport.Handle
import Thrift.Protocol.Binary

main :: IO ()
main = do
  handle <- hOpen("localhost", PortNumber 7911)
  putStrLn "sending ping"
  let m = Message { message_msg = TL.pack "ping" }
  result <- greet (BinaryProtocol handle, BinaryProtocol handle) m
  print result
