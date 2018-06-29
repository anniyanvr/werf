module Dapp
  module Dimg
    class Builder::Base
      attr_reader :dimg

      def initialize(dimg)
        @dimg = dimg
      end

      def before_build_check
      end

      def before_dimg_should_be_built_check
      end

      def before_install?
        false
      end

      def before_install(_image)
        raise
      end

      def before_install_checksum
        raise
      end

      def before_setup?
        false
      end

      def before_setup(_image)
        raise
      end

      def before_setup_checksum
        raise
      end

      def install?
        false
      end

      def install(_image)
        raise
      end

      def install_checksum
        raise
      end

      def setup?
        false
      end

      def setup(_image)
        raise
      end

      def setup_checksum
        raise
      end

      def build_artifact?
        false
      end

      def build_artifact(_image)
        raise
      end

      def build_artifact_checksum
        raise
      end

      def _checksum(*args)
        return if args.flatten.compact.delete_if { |val| val.respond_to?(:empty?) && val.empty? }.empty?
        dimg.hashsum args
      end
    end # Builder::Base
  end # Dimg
end # Dapp
