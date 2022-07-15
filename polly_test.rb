require 'aws-sdk-polly'
# module PollyHelper
polly = Aws::Polly::Client.new

polly.synthesize_speech({
    output_format: "mp3",
    text: "Rocket Elevators",
    voice_id: "Joanna",
    response_target: "/public/speech.mp3"

    # IO.copy_stream(resp.audio_stream, "speech.mp3")
})

end