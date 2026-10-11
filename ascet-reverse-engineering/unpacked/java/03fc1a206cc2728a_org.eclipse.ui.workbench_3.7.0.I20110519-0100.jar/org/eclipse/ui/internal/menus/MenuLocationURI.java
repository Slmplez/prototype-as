/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.menus;

import org.eclipse.ui.internal.util.Util;

public class MenuLocationURI {
    private String rawString;

    public MenuLocationURI(String uriDef) {
        this.rawString = uriDef;
    }

    public String getQuery() {
        String[] vals = Util.split(this.rawString, '?');
        return vals.length > 1 ? vals[1] : "";
    }

    public String getScheme() {
        String[] vals = Util.split(this.rawString, ':');
        return vals[0];
    }

    public String getPath() {
        String[] vals = Util.split(this.rawString, ':');
        if (vals.length < 2) {
            return null;
        }
        return (vals = Util.split(vals[1], '?')).length == 0 ? "" : vals[0];
    }

    public String toString() {
        return this.rawString;
    }

    public String getRawString() {
        return this.rawString;
    }
}

