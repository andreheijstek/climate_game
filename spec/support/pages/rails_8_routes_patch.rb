# Rails 8 removed LazyRouteSet#install_helpers
# Some gems (e.g. SitePrism <= 5.1) still call it.
#
# This restores a no-op implementation to keep compatibility.

module Rails
  class Engine
    class LazyRouteSet
      def install_helpers(_target = nil)
        # no-op for backward compatibility
      end
    end
  end
end