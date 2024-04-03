defmodule VersionManager.Command.Cmd do
  @file_src "~/.bashrc"
  @template_src "./templates/bashrc.htmlx"

  @inital_file_pointer "# START REPLACE BY VERSION MANAGER"
  @end_file_pointer "# END REPLACE BY VERSION MANAGER"

  @verify_list [
    {:file_src, @file_src},
    {:template_src, @template_src},
    {:inital_file_pointer, @inital_file_pointer},
    {:end_file_pointer, @end_file_pointer}
  ]

  def setup() do
    verify_processor()
    # TODO WHEN EXIST ERROR STOP PROCESS AND LOG THESE INFORMATION
  end

  def verify_processor() do
    Stream.map(@verify_list, fn verify_item -> do_verify_method(verify_item) end)
    |> Stream.map(fn task -> Task.async(task) end)
  end

  def do_verify_method(verify_item) do
    Task.async(fn -> verify_method(verify_item) end)
  end

  def verify_method({:file_src, @file_src}) do
    # TODO verify if this source is valid ?
    {:error, "Non-existent verification method"}
  end

  def verify_method({:template_src, @template_src}) do
    # TODO verify if this source is valid ?
    {:error, "Non-existent verification method"}
  end

  def verify_method({:inital_file_pointer, @inital_file_pointer}) do
    # TODO verify if this pointes is setted on files or template?
    {:error, "Non-existent verification method"}
  end

  def verify_method({:end_file_pointer, @end_file_pointer}) do
    # TODO verify if this pointes is setted on files or template?
    {:error, "Non-existent verification method"}
  end

  def verify_method(verify_item) do
    {:error, "Non-existent verification method #{inspect(verify_item)}"}
  end
end
