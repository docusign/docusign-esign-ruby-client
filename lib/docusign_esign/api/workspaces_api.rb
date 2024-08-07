=begin
#Docusign eSignature REST API

#The Docusign eSignature REST API provides you with a powerful, convenient, and simple Web services API for interacting with Docusign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_eSign

  class GetWorkspaceFileOptions
    # When set to **true**, the Content-Disposition header is set in the response. The value of the header provides the filename of the file. Default is **false**.
    attr_accessor :is_download

    # When set to **true** the file returned as a PDF.
    attr_accessor :pdf_version

    def self.default
      @@default ||= GetWorkspaceFileOptions.new
    end
  end

  class ListWorkspaceFilePagesOptions
    # The maximum number of results to be returned by this request.
    attr_accessor :count

    # Number of dots per inch for the resulting image. The default if not used is 94. The range is 1-310.
    attr_accessor :dpi

    # Sets the maximum height (in pixels) of the returned image.
    attr_accessor :max_height

    # Sets the maximum width (in pixels) of the returned image.
    attr_accessor :max_width

    # The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image.
    attr_accessor :start_position

    def self.default
      @@default ||= ListWorkspaceFilePagesOptions.new
    end
  end

  class ListWorkspaceFolderItemsOptions
    # The maximum number of results to be returned by this request.
    attr_accessor :count

    # When set to **true**, file information is returned in the response along with folder information. The default is **false**.
    attr_accessor :include_files

    # When set to **true**, information about the sub-folders of the current folder is returned. The default is **false**.
    attr_accessor :include_sub_folders

    # When set to **true**, thumbnails are returned as part of the response.  The default is **false**.
    attr_accessor :include_thumbnails

    # Set to **true** to return extended details about the user. The default is **false**.
    attr_accessor :include_user_detail

    # The position within the total result set from which to start returning values.
    attr_accessor :start_position

    # If set, then the results are filtered to those associated with the specified userId.
    attr_accessor :workspace_user_id

    def self.default
      @@default ||= ListWorkspaceFolderItemsOptions.new
    end
  end


  class WorkspacesApi
    attr_accessor :api_client

    def initialize(api_client = WorkspacesApi.default)
      @api_client = api_client
    end

    # Create a Workspace
    # Creates a new workspace.
    # @param account_id The external account number (int) or account ID Guid.
    # @param workspace  (optional parameter)
    # @return [Workspace]
    def create_workspace(account_id, workspace)
      data, _status_code, _headers = create_workspace_with_http_info(account_id,  workspace)
      return data
    end

    # Create a Workspace
    # Creates a new workspace.
    # @param account_id The external account number (int) or account ID Guid.
    # @param workspace  (optional parameter)
    # @return [Array<(Workspace, Fixnum, Hash)>] Workspace data, response status code and response headers
    def create_workspace_with_http_info(account_id, workspace)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkspacesApi.create_workspace ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling WorkspacesApi.create_workspace" if account_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/workspaces".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(workspace)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Workspace')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspacesApi#create_workspace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates a workspace file.
    # This method adds a file to a workspace.
    # @param account_id The external account number (int) or account ID Guid.
    # @param folder_id The ID of the folder being accessed.
    # @param workspace_id Specifies the workspace ID GUID.
    # @return [WorkspaceItem]
    def create_workspace_file(account_id, folder_id, workspace_id)
      data, _status_code, _headers = create_workspace_file_with_http_info(account_id, folder_id, workspace_id)
      return data
    end

    # Creates a workspace file.
    # This method adds a file to a workspace.
    # @param account_id The external account number (int) or account ID Guid.
    # @param folder_id The ID of the folder being accessed.
    # @param workspace_id Specifies the workspace ID GUID.
    # @return [Array<(WorkspaceItem, Fixnum, Hash)>] WorkspaceItem data, response status code and response headers
    def create_workspace_file_with_http_info(account_id, folder_id, workspace_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkspacesApi.create_workspace_file ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling WorkspacesApi.create_workspace_file" if account_id.nil?
      # verify the required parameter 'folder_id' is set
      fail ArgumentError, "Missing the required parameter 'folder_id' when calling WorkspacesApi.create_workspace_file" if folder_id.nil?
      # verify the required parameter 'workspace_id' is set
      fail ArgumentError, "Missing the required parameter 'workspace_id' when calling WorkspacesApi.create_workspace_file" if workspace_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'folderId' + '}', folder_id.to_s).sub('{' + 'workspaceId' + '}', workspace_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkspaceItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspacesApi#create_workspace_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Workspace
    # Deletes an existing workspace (logically).
    # @param account_id The external account number (int) or account ID Guid.
    # @param workspace_id Specifies the workspace ID GUID.
    # @return [Workspace]
    def delete_workspace(account_id, workspace_id)
      data, _status_code, _headers = delete_workspace_with_http_info(account_id, workspace_id)
      return data
    end

    # Delete Workspace
    # Deletes an existing workspace (logically).
    # @param account_id The external account number (int) or account ID Guid.
    # @param workspace_id Specifies the workspace ID GUID.
    # @return [Array<(Workspace, Fixnum, Hash)>] Workspace data, response status code and response headers
    def delete_workspace_with_http_info(account_id, workspace_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkspacesApi.delete_workspace ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling WorkspacesApi.delete_workspace" if account_id.nil?
      # verify the required parameter 'workspace_id' is set
      fail ArgumentError, "Missing the required parameter 'workspace_id' when calling WorkspacesApi.delete_workspace" if workspace_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/workspaces/{workspaceId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'workspaceId' + '}', workspace_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Workspace')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspacesApi#delete_workspace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes workspace one or more specific files/folders from the given folder or root.
    # This method deletes one or more files or sub-folders from a workspace folder or root.  Note: To delete items from a workspace, the `status` of the workspace must be `active`.
    # @param account_id The external account number (int) or account ID Guid.
    # @param folder_id The ID of the folder being accessed.
    # @param workspace_id Specifies the workspace ID GUID.
    # @param workspace_item_list  (optional parameter)
    # @return [nil]
    def delete_workspace_folder_items(account_id, folder_id, workspace_id, workspace_item_list)
      delete_workspace_folder_items_with_http_info(account_id, folder_id, workspace_id,  workspace_item_list)
      return nil
    end

    # Deletes workspace one or more specific files/folders from the given folder or root.
    # This method deletes one or more files or sub-folders from a workspace folder or root.  Note: To delete items from a workspace, the &#x60;status&#x60; of the workspace must be &#x60;active&#x60;.
    # @param account_id The external account number (int) or account ID Guid.
    # @param folder_id The ID of the folder being accessed.
    # @param workspace_id Specifies the workspace ID GUID.
    # @param workspace_item_list  (optional parameter)
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_workspace_folder_items_with_http_info(account_id, folder_id, workspace_id, workspace_item_list)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkspacesApi.delete_workspace_folder_items ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling WorkspacesApi.delete_workspace_folder_items" if account_id.nil?
      # verify the required parameter 'folder_id' is set
      fail ArgumentError, "Missing the required parameter 'folder_id' when calling WorkspacesApi.delete_workspace_folder_items" if folder_id.nil?
      # verify the required parameter 'workspace_id' is set
      fail ArgumentError, "Missing the required parameter 'workspace_id' when calling WorkspacesApi.delete_workspace_folder_items" if workspace_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'folderId' + '}', folder_id.to_s).sub('{' + 'workspaceId' + '}', workspace_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(workspace_item_list)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspacesApi#delete_workspace_folder_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Workspace
    # Retrives properties about a workspace given a unique workspaceId. 
    # @param account_id The external account number (int) or account ID Guid.
    # @param workspace_id Specifies the workspace ID GUID.
    # @return [Workspace]
    def get_workspace(account_id, workspace_id)
      data, _status_code, _headers = get_workspace_with_http_info(account_id, workspace_id)
      return data
    end

    # Get Workspace
    # Retrives properties about a workspace given a unique workspaceId. 
    # @param account_id The external account number (int) or account ID Guid.
    # @param workspace_id Specifies the workspace ID GUID.
    # @return [Array<(Workspace, Fixnum, Hash)>] Workspace data, response status code and response headers
    def get_workspace_with_http_info(account_id, workspace_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkspacesApi.get_workspace ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling WorkspacesApi.get_workspace" if account_id.nil?
      # verify the required parameter 'workspace_id' is set
      fail ArgumentError, "Missing the required parameter 'workspace_id' when calling WorkspacesApi.get_workspace" if workspace_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/workspaces/{workspaceId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'workspaceId' + '}', workspace_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Workspace')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspacesApi#get_workspace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Workspace File
    # Retrieves a workspace file (the binary).
    # @param account_id The external account number (int) or account ID Guid.
    # @param file_id Specifies the room file ID GUID.
    # @param folder_id The ID of the folder being accessed.
    # @param workspace_id Specifies the workspace ID GUID.
    # @param DocuSign_eSign::GetWorkspaceFileOptions Options for modifying the behavior of the function.
    # @return [nil]
    def get_workspace_file(account_id, file_id, folder_id, workspace_id, options = DocuSign_eSign::GetWorkspaceFileOptions.default)
      get_workspace_file_with_http_info(account_id, file_id, folder_id, workspace_id, options)
      return nil
    end

    # Get Workspace File
    # Retrieves a workspace file (the binary).
    # @param account_id The external account number (int) or account ID Guid.
    # @param file_id Specifies the room file ID GUID.
    # @param folder_id The ID of the folder being accessed.
    # @param workspace_id Specifies the workspace ID GUID.
    # @param DocuSign_eSign::GetWorkspaceFileOptions Options for modifying the behavior of the function.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_workspace_file_with_http_info(account_id, file_id, folder_id, workspace_id, options = DocuSign_eSign::GetWorkspaceFileOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkspacesApi.get_workspace_file ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling WorkspacesApi.get_workspace_file" if account_id.nil?
      # verify the required parameter 'file_id' is set
      fail ArgumentError, "Missing the required parameter 'file_id' when calling WorkspacesApi.get_workspace_file" if file_id.nil?
      # verify the required parameter 'folder_id' is set
      fail ArgumentError, "Missing the required parameter 'folder_id' when calling WorkspacesApi.get_workspace_file" if folder_id.nil?
      # verify the required parameter 'workspace_id' is set
      fail ArgumentError, "Missing the required parameter 'workspace_id' when calling WorkspacesApi.get_workspace_file" if workspace_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files/{fileId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'fileId' + '}', file_id.to_s).sub('{' + 'folderId' + '}', folder_id.to_s).sub('{' + 'workspaceId' + '}', workspace_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'is_download'] = options.is_download if !options.is_download.nil?
      query_params[:'pdf_version'] = options.pdf_version if !options.pdf_version.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspacesApi#get_workspace_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List File Pages
    # Retrieves a workspace file as rasterized pages.
    # @param account_id The external account number (int) or account ID Guid.
    # @param file_id Specifies the room file ID GUID.
    # @param folder_id The ID of the folder being accessed.
    # @param workspace_id Specifies the workspace ID GUID.
    # @param DocuSign_eSign::ListWorkspaceFilePagesOptions Options for modifying the behavior of the function.
    # @return [PageImages]
    def list_workspace_file_pages(account_id, file_id, folder_id, workspace_id, options = DocuSign_eSign::ListWorkspaceFilePagesOptions.default)
      data, _status_code, _headers = list_workspace_file_pages_with_http_info(account_id, file_id, folder_id, workspace_id, options)
      return data
    end

    # List File Pages
    # Retrieves a workspace file as rasterized pages.
    # @param account_id The external account number (int) or account ID Guid.
    # @param file_id Specifies the room file ID GUID.
    # @param folder_id The ID of the folder being accessed.
    # @param workspace_id Specifies the workspace ID GUID.
    # @param DocuSign_eSign::ListWorkspaceFilePagesOptions Options for modifying the behavior of the function.
    # @return [Array<(PageImages, Fixnum, Hash)>] PageImages data, response status code and response headers
    def list_workspace_file_pages_with_http_info(account_id, file_id, folder_id, workspace_id, options = DocuSign_eSign::ListWorkspaceFilePagesOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkspacesApi.list_workspace_file_pages ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling WorkspacesApi.list_workspace_file_pages" if account_id.nil?
      # verify the required parameter 'file_id' is set
      fail ArgumentError, "Missing the required parameter 'file_id' when calling WorkspacesApi.list_workspace_file_pages" if file_id.nil?
      # verify the required parameter 'folder_id' is set
      fail ArgumentError, "Missing the required parameter 'folder_id' when calling WorkspacesApi.list_workspace_file_pages" if folder_id.nil?
      # verify the required parameter 'workspace_id' is set
      fail ArgumentError, "Missing the required parameter 'workspace_id' when calling WorkspacesApi.list_workspace_file_pages" if workspace_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files/{fileId}/pages".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'fileId' + '}', file_id.to_s).sub('{' + 'folderId' + '}', folder_id.to_s).sub('{' + 'workspaceId' + '}', workspace_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'count'] = options.count if !options.count.nil?
      query_params[:'dpi'] = options.dpi if !options.dpi.nil?
      query_params[:'max_height'] = options.max_height if !options.max_height.nil?
      query_params[:'max_width'] = options.max_width if !options.max_width.nil?
      query_params[:'start_position'] = options.start_position if !options.start_position.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageImages')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspacesApi#list_workspace_file_pages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Workspace Folder Contents
    # Retrieves workspace folder contents, which can include sub folders and files.
    # @param account_id The external account number (int) or account ID Guid.
    # @param folder_id The ID of the folder being accessed.
    # @param workspace_id Specifies the workspace ID GUID.
    # @param DocuSign_eSign::ListWorkspaceFolderItemsOptions Options for modifying the behavior of the function.
    # @return [WorkspaceFolderContents]
    def list_workspace_folder_items(account_id, folder_id, workspace_id, options = DocuSign_eSign::ListWorkspaceFolderItemsOptions.default)
      data, _status_code, _headers = list_workspace_folder_items_with_http_info(account_id, folder_id, workspace_id, options)
      return data
    end

    # List Workspace Folder Contents
    # Retrieves workspace folder contents, which can include sub folders and files.
    # @param account_id The external account number (int) or account ID Guid.
    # @param folder_id The ID of the folder being accessed.
    # @param workspace_id Specifies the workspace ID GUID.
    # @param DocuSign_eSign::ListWorkspaceFolderItemsOptions Options for modifying the behavior of the function.
    # @return [Array<(WorkspaceFolderContents, Fixnum, Hash)>] WorkspaceFolderContents data, response status code and response headers
    def list_workspace_folder_items_with_http_info(account_id, folder_id, workspace_id, options = DocuSign_eSign::ListWorkspaceFolderItemsOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkspacesApi.list_workspace_folder_items ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling WorkspacesApi.list_workspace_folder_items" if account_id.nil?
      # verify the required parameter 'folder_id' is set
      fail ArgumentError, "Missing the required parameter 'folder_id' when calling WorkspacesApi.list_workspace_folder_items" if folder_id.nil?
      # verify the required parameter 'workspace_id' is set
      fail ArgumentError, "Missing the required parameter 'workspace_id' when calling WorkspacesApi.list_workspace_folder_items" if workspace_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'folderId' + '}', folder_id.to_s).sub('{' + 'workspaceId' + '}', workspace_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'count'] = options.count if !options.count.nil?
      query_params[:'include_files'] = options.include_files if !options.include_files.nil?
      query_params[:'include_sub_folders'] = options.include_sub_folders if !options.include_sub_folders.nil?
      query_params[:'include_thumbnails'] = options.include_thumbnails if !options.include_thumbnails.nil?
      query_params[:'include_user_detail'] = options.include_user_detail if !options.include_user_detail.nil?
      query_params[:'start_position'] = options.start_position if !options.start_position.nil?
      query_params[:'workspace_user_id'] = options.workspace_user_id if !options.workspace_user_id.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkspaceFolderContents')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspacesApi#list_workspace_folder_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Workspaces
    # Gets information about the Workspaces that have been created.
    # @param account_id The external account number (int) or account ID Guid.
    # @return [WorkspaceList]
    def list_workspaces(account_id)
      data, _status_code, _headers = list_workspaces_with_http_info(account_id)
      return data
    end

    # List Workspaces
    # Gets information about the Workspaces that have been created.
    # @param account_id The external account number (int) or account ID Guid.
    # @return [Array<(WorkspaceList, Fixnum, Hash)>] WorkspaceList data, response status code and response headers
    def list_workspaces_with_http_info(account_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkspacesApi.list_workspaces ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling WorkspacesApi.list_workspaces" if account_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/workspaces".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkspaceList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspacesApi#list_workspaces\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Workspace
    # Updates information about a specific workspace.
    # @param account_id The external account number (int) or account ID Guid.
    # @param workspace_id Specifies the workspace ID GUID.
    # @param workspace  (optional parameter)
    # @return [Workspace]
    def update_workspace(account_id, workspace_id, workspace)
      data, _status_code, _headers = update_workspace_with_http_info(account_id, workspace_id,  workspace)
      return data
    end

    # Update Workspace
    # Updates information about a specific workspace.
    # @param account_id The external account number (int) or account ID Guid.
    # @param workspace_id Specifies the workspace ID GUID.
    # @param workspace  (optional parameter)
    # @return [Array<(Workspace, Fixnum, Hash)>] Workspace data, response status code and response headers
    def update_workspace_with_http_info(account_id, workspace_id, workspace)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkspacesApi.update_workspace ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling WorkspacesApi.update_workspace" if account_id.nil?
      # verify the required parameter 'workspace_id' is set
      fail ArgumentError, "Missing the required parameter 'workspace_id' when calling WorkspacesApi.update_workspace" if workspace_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/workspaces/{workspaceId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'workspaceId' + '}', workspace_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(workspace)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Workspace')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspacesApi#update_workspace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Workspace File Metadata
    # Updates workspace item metadata for one or more specific files/folders.
    # @param account_id The external account number (int) or account ID Guid.
    # @param file_id Specifies the room file ID GUID.
    # @param folder_id The ID of the folder being accessed.
    # @param workspace_id Specifies the workspace ID GUID.
    # @return [WorkspaceItem]
    def update_workspace_file(account_id, file_id, folder_id, workspace_id)
      data, _status_code, _headers = update_workspace_file_with_http_info(account_id, file_id, folder_id, workspace_id)
      return data
    end

    # Update Workspace File Metadata
    # Updates workspace item metadata for one or more specific files/folders.
    # @param account_id The external account number (int) or account ID Guid.
    # @param file_id Specifies the room file ID GUID.
    # @param folder_id The ID of the folder being accessed.
    # @param workspace_id Specifies the workspace ID GUID.
    # @return [Array<(WorkspaceItem, Fixnum, Hash)>] WorkspaceItem data, response status code and response headers
    def update_workspace_file_with_http_info(account_id, file_id, folder_id, workspace_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkspacesApi.update_workspace_file ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling WorkspacesApi.update_workspace_file" if account_id.nil?
      # verify the required parameter 'file_id' is set
      fail ArgumentError, "Missing the required parameter 'file_id' when calling WorkspacesApi.update_workspace_file" if file_id.nil?
      # verify the required parameter 'folder_id' is set
      fail ArgumentError, "Missing the required parameter 'folder_id' when calling WorkspacesApi.update_workspace_file" if folder_id.nil?
      # verify the required parameter 'workspace_id' is set
      fail ArgumentError, "Missing the required parameter 'workspace_id' when calling WorkspacesApi.update_workspace_file" if workspace_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files/{fileId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'fileId' + '}', file_id.to_s).sub('{' + 'folderId' + '}', folder_id.to_s).sub('{' + 'workspaceId' + '}', workspace_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkspaceItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspacesApi#update_workspace_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end