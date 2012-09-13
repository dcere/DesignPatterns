Gateway directory structure extended for authorization:
=======================================================

gateway/
 |
 +--------------------------------------+
 |                                      |
lib/                                README.txt
 |
 +----------------------+------------------+
 |                      |                  |
gateway.rb           adapter/             auth/
                        |                  |
                     http_adapter.rb      default.rb
                     smtp_adapter.rb      russolsen.rb
                     file_adapter.rb
