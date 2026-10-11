/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.launcher;

public class JNIBridge {
    private String library;
    private boolean libraryLoaded = false;

    private native void _set_exit_data(String var1, String var2);

    private native void _set_launcher_info(String var1, String var2);

    private native void _update_splash();

    private native long _get_splash_handle();

    private native void _show_splash(String var1);

    private native void _takedown_splash();

    private native int OleInitialize(int var1);

    private native void OleUninitialize();

    public JNIBridge(String library) {
        this.library = library;
    }

    private void loadLibrary() {
        if (this.library != null) {
            try {
                int idx;
                if (this.library.indexOf("wpf") != -1 && (idx = this.library.indexOf("eclipse_")) != -1) {
                    String comLibrary = String.valueOf(this.library.substring(0, idx)) + "com_";
                    comLibrary = String.valueOf(comLibrary) + this.library.substring(idx + 8, this.library.length());
                    Runtime.getRuntime().load(comLibrary);
                    this.OleInitialize(0);
                }
                Runtime.getRuntime().load(this.library);
            }
            catch (UnsatisfiedLinkError unsatisfiedLinkError) {}
        }
        this.libraryLoaded = true;
    }

    public boolean setExitData(String sharedId, String data) {
        try {
            this._set_exit_data(sharedId, data);
            return true;
        }
        catch (UnsatisfiedLinkError unsatisfiedLinkError) {
            if (!this.libraryLoaded) {
                this.loadLibrary();
                return this.setExitData(sharedId, data);
            }
            return false;
        }
    }

    public boolean setLauncherInfo(String launcher, String name) {
        try {
            this._set_launcher_info(launcher, name);
            return true;
        }
        catch (UnsatisfiedLinkError unsatisfiedLinkError) {
            if (!this.libraryLoaded) {
                this.loadLibrary();
                return this.setLauncherInfo(launcher, name);
            }
            return false;
        }
    }

    public boolean showSplash(String bitmap) {
        try {
            this._show_splash(bitmap);
            return true;
        }
        catch (UnsatisfiedLinkError unsatisfiedLinkError) {
            if (!this.libraryLoaded) {
                this.loadLibrary();
                return this.showSplash(bitmap);
            }
            return false;
        }
    }

    public boolean updateSplash() {
        try {
            this._update_splash();
            return true;
        }
        catch (UnsatisfiedLinkError unsatisfiedLinkError) {
            if (!this.libraryLoaded) {
                this.loadLibrary();
                return this.updateSplash();
            }
            return false;
        }
    }

    public long getSplashHandle() {
        try {
            return this._get_splash_handle();
        }
        catch (UnsatisfiedLinkError unsatisfiedLinkError) {
            if (!this.libraryLoaded) {
                this.loadLibrary();
                return this.getSplashHandle();
            }
            return -1L;
        }
    }

    boolean isLibraryLoadedByJava() {
        return this.libraryLoaded;
    }

    public boolean takeDownSplash() {
        try {
            this._takedown_splash();
            return true;
        }
        catch (UnsatisfiedLinkError unsatisfiedLinkError) {
            if (!this.libraryLoaded) {
                this.loadLibrary();
                return this.takeDownSplash();
            }
            return false;
        }
    }

    public boolean uninitialize() {
        if (this.libraryLoaded && this.library != null && this.library.indexOf("wpf") != -1) {
            try {
                this.OleUninitialize();
            }
            catch (UnsatisfiedLinkError unsatisfiedLinkError) {
                return false;
            }
        }
        return true;
    }
}

