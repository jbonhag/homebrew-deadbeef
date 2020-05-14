class DeadbeefVfsRar < Formula
  desc "RAR vfs plugin for DeaDBeef player"
  homepage "https://github.com/DeaDBeeF-Player/vfs_rar"
  head "https://github.com/DeaDBeeF-Player/vfs_rar.git"

  depends_on :deadbeef

  def install
    curl "-O", "https://www.rarlab.com/rar/unrarsrc-5.9.2.tar.gz"
    system "tar", "-xf", "unrarsrc-5.9.2.tar.gz"

    ENV.append "CXXFLAGS", "-I/Applications/DeaDBeeF.app/Contents/Headers"

    inreplace "Makefile" do |s|
      s.gsub! "$(APP).so", "$(APP).dylib"
      s.gsub! "~/.local/lib/deadbeef", prefix
    end

    system "make", "install"
  end

  def caveats
    <<~EOS
      This plugin needs to be installed like so:

        mkdir -p ~/Library/Application\\ Support/Deadbeef/Plugins
        cp #{prefix}/vfs_rar.dylib ~/Library/Application\\ Support/Deadbeef/Plugins
    EOS
  end

  test do
    assert_predicate "#{plugins_dir}/vfs_rar.dylib", :exist?
  end
end
