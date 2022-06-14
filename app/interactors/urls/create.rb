# frozen_string_literal: true

module Urls
  class Create
    include Interactor::Organizer

    organize Urls::CreateSteps::ValidatePresence,
             Urls::CreateSteps::ValidateUrl,
             Urls::CreateSteps::CreateHash,
             Urls::CreateSteps::CreateShortenedUrl
  end
end
