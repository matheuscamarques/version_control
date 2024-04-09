defmodule VersionManager.ClientInterface.Cmd do
  @doc """
  - Example
  # sudo version_manager elixir version
  """
  def global(tool_name, version) do
    # TODO make CMD
    {:ok,
     %{
       file: _file,
       template_file: _template_file,
       initial_pointer: _initial_pointer,
       end_pointer: _end_pointer
    }  = metadata } = VersionManager.Command.Setup.execute()

    VersionManager.Command.Global.execute(metadata,tool_name, version)
  end

  @doc """
  - Example
  # sudo version_manager elixir version
  """
  def install(tool_name, version) do
    VersionManager.Command.Install.execute(tool_name, version)
  end
end
