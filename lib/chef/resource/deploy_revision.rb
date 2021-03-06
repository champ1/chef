#
# Author:: Daniel DeLeo (<dan@kallistec.com>)
# Copyright:: Copyright (c) 2009 Daniel DeLeo
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

class Chef
  class Resource

    # Convenience class for using the deploy resource with the revision
    # deployment strategy (provider)
    class DeployRevision < Chef::Resource::Deploy
      def initialize(*args, &block)
        super
        @resource_name = :deploy_revision
        @provider = Chef::Provider::Deploy::Revision
      end
    end

    class DeployBranch < Chef::Resource::DeployRevision
      def initialize(*args, &block)
        super
        @resource_name = :deploy_branch
      end
    end

  end
end
