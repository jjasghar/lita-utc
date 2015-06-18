module Lita
  module Handlers
    class Utc < Handler

      route(/^utc$/i, :utc, command: false, help: { "utc" => "Posts the UTC time."})

      def utc(request)

        time = ::Time.now.utc
        request.reply("The UTC time and date is now: #{time}")

      end
    end

    Lita.register_handler(Utc)
  end
end
