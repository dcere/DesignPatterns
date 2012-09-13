Directory structure for the message gateway system:
===================================================

gateway/
 |
 +--------------------------------------+
 |                                      |
lib/                                README.txt
 |
 +----------------------+
 |                      |
gateway.rb           adapter/
                        |
                     http_adapter.rb
                     smtp_adapter.rb
                     file_adapter.rb
