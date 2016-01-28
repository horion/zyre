################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################

require 'ffi'
require_relative 'ffi/version'

module Zyre
  module FFI
    module LibC
      extend ::FFI::Library
      ffi_lib ::FFI::Platform::LIBC
      attach_function :free, [ :pointer ], :void, blocking: true
    end

    extend ::FFI::Library

    def self.available?
      @available
    end

    begin
      lib_name = 'libzyre'
      lib_paths = ['/usr/local/lib', '/opt/local/lib', '/usr/lib64']
        .map { |path| "#{path}/#{lib_name}.#{::FFI::Platform::LIBSUFFIX}" }
      ffi_lib lib_paths + [lib_name]
      @available = true
    rescue LoadError
      warn ""
      warn "WARNING: ::Zyre::FFI is not available without libzyre."
      warn ""
      @available = false
    end

    if available?
      opts = {
        blocking: true  # only necessary on MRI to deal with the GIL.
      }

      begin # DRAFT method
        attach_function :zyre_new, [:string], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function new() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_destroy, [:pointer], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function destroy() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_uuid, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function uuid() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_name, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function name() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_set_header, [:pointer, :string, :string, :varargs], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function set_header() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_set_verbose, [:pointer], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function set_verbose() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_set_port, [:pointer, :int], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function set_port() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_set_interval, [:pointer, :size_t], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function set_interval() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_set_interface, [:pointer, :string], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function set_interface() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_set_endpoint, [:pointer, :string, :varargs], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function set_endpoint() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_gossip_bind, [:pointer, :string, :varargs], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function gossip_bind() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_gossip_connect, [:pointer, :string, :varargs], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function gossip_connect() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_start, [:pointer], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function start() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_stop, [:pointer], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function stop() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_join, [:pointer, :string], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function join() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_leave, [:pointer, :string], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function leave() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_recv, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function recv() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_whisper, [:pointer, :string, :pointer], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function whisper() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_shout, [:pointer, :string, :pointer], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function shout() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_whispers, [:pointer, :string, :string, :varargs], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function whispers() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_shouts, [:pointer, :string, :string, :varargs], :int, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function shouts() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_peers, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function peers() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_own_groups, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function own_groups() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_peer_groups, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function peer_groups() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_peer_address, [:pointer, :string], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function peer_address() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_peer_header_value, [:pointer, :string, :string], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function peer_header_value() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_socket, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function socket() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_print, [:pointer], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function print() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_version, [:pointer, :pointer, :pointer], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function version() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_test, [:bool], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function test() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end

      require_relative 'ffi/zyre'

      enum :zyre_event_type, [
        :enter, 1,
        :join, 2,
        :leave, 3,
        :exit, 4,
        :whisper, 5,
        :shout, 6,
        :stop, 7,
        :evasive, 8,
      ]

      begin # DRAFT method
        attach_function :zyre_event_new, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function new() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_event_destroy, [:pointer], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function destroy() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_event_type, [:pointer], :zyre event_type, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function type() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_event_sender, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function sender() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_event_name, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function name() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_event_address, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function address() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_event_headers, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function headers() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_event_header, [:pointer, :string], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function header() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_event_group, [:pointer], :string, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function group() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_event_msg, [:pointer], :pointer, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function msg() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_event_print, [:pointer], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function print() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end
      begin # DRAFT method
        attach_function :zyre_event_test, [:bool], :void, **opts
      rescue ::FFI::NotFoundError
        if $VERBOSE || $DEBUG
          warn "The function test() can't be used through " +
               "this Ruby binding because it's not available."
        end
      end

      require_relative 'ffi/event'
    end
  end
end

################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################
