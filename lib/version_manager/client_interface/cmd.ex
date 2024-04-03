defmodule VersionManager.ClientInterface.Cmd do

  @doc """
  - Example
  # sudo version_manager elixir version
  """
  def global(tool_name,version) do
    # TODO make CMD
    VersionManager.Command.Cmd.setup()
    VersionManager.Command.Cmd.global()
  end

  @doc """
  - Example
  # sudo version_manager elixir version
  """
  def install(tool_name,version) do
    VersionManager.Command.Cmd.install()
  end
end
