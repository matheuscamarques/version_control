defmodule VersionManager.ClientInterface.Cmd do

  @doc """
  - Example
  # sudo version_manager elixir version
  """
  def global(tool_name,version) do
    # TODO make CMD
    VersionManager.Command.Setup.execute()
    VersionManager.Command.Global.execute(tool_name,version)
  end

  @doc """
  - Example
  # sudo version_manager elixir version
  """
  def install(tool_name,version) do
    VersionManager.Command.Setup.execute()
    VersionManager.Command.Global.execute(tool_name,version)
  end
end
