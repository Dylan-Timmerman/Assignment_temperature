class Tempdb < ApplicationRecord
  after_save :broadcast

    def broadcast
        ActionCable.server.broadcast "tempchannel", data: temp
    end
end
