module ApiException
  EXCEPTIONS = {
    "ActiveRecord::RecordInvalid" => { status: 400, message: "Invalid request" },
    "BadRequest" => { status: 400, message: "Invalid request" },

    "Unauthorized" => { status: 401, message: "You are not authorized" },

    "Forbidden" => { status: 403, message: "Forbidden" },

    "ActiveRecord::RecordNotFound" => { status: 404, message: "Cannot find record" },
    "NotFound" => { status: 404, message: "Not found" },
    "UnprocessableEntity" => { status: 422, message: "Entity not valid" }
  }

  class BaseError < StandardError; end

  module Handler
    def self.included(klass)
      klass.class_eval do
        EXCEPTIONS.each do |exception_name, context|
          unless ApiException.const_defined?(exception_name)
            ApiException.const_set(exception_name, Class.new(BaseError))
            exception_name = "ApiException::#{exception_name}"
          end

          rescue_from exception_name do |exception|
            render status: context[:status], json: { error: exception.message || context[:message] }.compact
          end
        end
      end
    end
  end
end
