import qualified Data.Text.Lazy as TL
import Hadoopfs_Types
import Network
import ThriftHadoopFileSystem_Client
import Thrift.Transport.Handle
import Thrift.Protocol.Binary

main :: IO ()
main = do
  handle <- hOpen("localhost", PortNumber 44444)
  putStrLn "accessing localhost:44444"
  res <- listStatus (BinaryProtocol handle, BinaryProtocol handle) (Pathname $ TL.pack "hdfs:///")
  putStrLn "finished access"
  print res
