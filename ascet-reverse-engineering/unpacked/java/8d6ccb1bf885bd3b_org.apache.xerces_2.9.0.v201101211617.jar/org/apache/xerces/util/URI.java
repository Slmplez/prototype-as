/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.util;

import java.io.IOException;
import java.io.Serializable;

public class URI
implements Serializable {
    static final long serialVersionUID = 1601921774685357214L;
    private static final byte[] fgLookupTable = new byte[128];
    private static final int RESERVED_CHARACTERS = 1;
    private static final int MARK_CHARACTERS = 2;
    private static final int SCHEME_CHARACTERS = 4;
    private static final int USERINFO_CHARACTERS = 8;
    private static final int ASCII_ALPHA_CHARACTERS = 16;
    private static final int ASCII_DIGIT_CHARACTERS = 32;
    private static final int ASCII_HEX_CHARACTERS = 64;
    private static final int PATH_CHARACTERS = 128;
    private static final int MASK_ALPHA_NUMERIC = 48;
    private static final int MASK_UNRESERVED_MASK = 50;
    private static final int MASK_URI_CHARACTER = 51;
    private static final int MASK_SCHEME_CHARACTER = 52;
    private static final int MASK_USERINFO_CHARACTER = 58;
    private static final int MASK_PATH_CHARACTER = 178;
    private String m_scheme = null;
    private String m_userinfo = null;
    private String m_host = null;
    private int m_port = -1;
    private String m_regAuthority = null;
    private String m_path = null;
    private String m_queryString = null;
    private String m_fragment = null;
    private static boolean DEBUG;

    public URI() {
    }

    public URI(URI uRI) {
        this.initialize(uRI);
    }

    public URI(String string) throws MalformedURIException {
        this((URI)null, string);
    }

    public URI(String string, boolean bl) throws MalformedURIException {
        this(null, string, bl);
    }

    public URI(URI uRI, String string) throws MalformedURIException {
        this.initialize(uRI, string);
    }

    public URI(URI uRI, String string, boolean bl) throws MalformedURIException {
        this.initialize(uRI, string, bl);
    }

    public URI(String string, String string2) throws MalformedURIException {
        if (string == null || string.trim().length() == 0) {
            throw new MalformedURIException("Cannot construct URI with null/empty scheme!");
        }
        if (string2 == null || string2.trim().length() == 0) {
            throw new MalformedURIException("Cannot construct URI with null/empty scheme-specific part!");
        }
        this.setScheme(string);
        this.setPath(string2);
    }

    public URI(String string, String string2, String string3, String string4, String string5) throws MalformedURIException {
        this(string, null, string2, -1, string3, string4, string5);
    }

    public URI(String string, String string2, String string3, int n, String string4, String string5, String string6) throws MalformedURIException {
        if (string == null || string.trim().length() == 0) {
            throw new MalformedURIException("Scheme is required!");
        }
        if (string3 == null) {
            if (string2 != null) {
                throw new MalformedURIException("Userinfo may not be specified if host is not specified!");
            }
            if (n != -1) {
                throw new MalformedURIException("Port may not be specified if host is not specified!");
            }
        }
        if (string4 != null) {
            if (string4.indexOf(63) != -1 && string5 != null) {
                throw new MalformedURIException("Query string cannot be specified in path and query string!");
            }
            if (string4.indexOf(35) != -1 && string6 != null) {
                throw new MalformedURIException("Fragment cannot be specified in both the path and fragment!");
            }
        }
        this.setScheme(string);
        this.setHost(string3);
        this.setPort(n);
        this.setUserinfo(string2);
        this.setPath(string4);
        this.setQueryString(string5);
        this.setFragment(string6);
    }

    private void initialize(URI uRI) {
        this.m_scheme = uRI.getScheme();
        this.m_userinfo = uRI.getUserinfo();
        this.m_host = uRI.getHost();
        this.m_port = uRI.getPort();
        this.m_regAuthority = uRI.getRegBasedAuthority();
        this.m_path = uRI.getPath();
        this.m_queryString = uRI.getQueryString();
        this.m_fragment = uRI.getFragment();
    }

    private void initialize(URI uRI, String string, boolean bl) throws MalformedURIException {
        int n;
        int n2;
        int n3;
        String string2 = string;
        int n4 = n3 = string2 != null ? string2.length() : 0;
        if (uRI == null && n3 == 0) {
            if (bl) {
                this.m_path = "";
                return;
            }
            throw new MalformedURIException("Cannot initialize URI with empty parameters.");
        }
        if (n3 == 0) {
            this.initialize(uRI);
            return;
        }
        int n5 = 0;
        int n6 = string2.indexOf(58);
        if (n6 != -1) {
            n2 = n6 - 1;
            n = string2.lastIndexOf(47, n2);
            int n7 = string2.lastIndexOf(63, n2);
            int n8 = string2.lastIndexOf(35, n2);
            if (n6 == 0 || n != -1 || n7 != -1 || n8 != -1) {
                if (n6 == 0 || uRI == null && n8 != 0 && !bl) {
                    throw new MalformedURIException("No scheme found in URI.");
                }
            } else {
                this.initializeScheme(string2);
                n5 = this.m_scheme.length() + 1;
                if (n6 == n3 - 1 || string2.charAt(n6 + 1) == '#') {
                    throw new MalformedURIException("Scheme specific part cannot be empty.");
                }
            }
        } else if (uRI == null && string2.indexOf(35) != 0 && !bl) {
            throw new MalformedURIException("No scheme found in URI.");
        }
        if (n5 + 1 < n3 && string2.charAt(n5) == '/' && string2.charAt(n5 + 1) == '/') {
            n2 = n5 += 2;
            n = 0;
            while (n5 < n3) {
                n = string2.charAt(n5);
                if (n == 47 || n == 63 || n == 35) break;
                ++n5;
            }
            if (n5 > n2) {
                if (!this.initializeAuthority(string2.substring(n2, n5))) {
                    n5 = n2 - 2;
                }
            } else {
                this.m_host = "";
            }
        }
        this.initializePath(string2, n5);
        if (uRI != null) {
            this.absolutize(uRI);
        }
    }

    private void initialize(URI uRI, String string) throws MalformedURIException {
        int n;
        int n2;
        int n3;
        String string2 = string;
        int n4 = n3 = string2 != null ? string2.length() : 0;
        if (uRI == null && n3 == 0) {
            throw new MalformedURIException("Cannot initialize URI with empty parameters.");
        }
        if (n3 == 0) {
            this.initialize(uRI);
            return;
        }
        int n5 = 0;
        int n6 = string2.indexOf(58);
        if (n6 != -1) {
            n2 = n6 - 1;
            n = string2.lastIndexOf(47, n2);
            int n7 = string2.lastIndexOf(63, n2);
            int n8 = string2.lastIndexOf(35, n2);
            if (n6 == 0 || n != -1 || n7 != -1 || n8 != -1) {
                if (n6 == 0 || uRI == null && n8 != 0) {
                    throw new MalformedURIException("No scheme found in URI.");
                }
            } else {
                this.initializeScheme(string2);
                n5 = this.m_scheme.length() + 1;
                if (n6 == n3 - 1 || string2.charAt(n6 + 1) == '#') {
                    throw new MalformedURIException("Scheme specific part cannot be empty.");
                }
            }
        } else if (uRI == null && string2.indexOf(35) != 0) {
            throw new MalformedURIException("No scheme found in URI.");
        }
        if (n5 + 1 < n3 && string2.charAt(n5) == '/' && string2.charAt(n5 + 1) == '/') {
            n2 = n5 += 2;
            n = 0;
            while (n5 < n3) {
                n = string2.charAt(n5);
                if (n == 47 || n == 63 || n == 35) break;
                ++n5;
            }
            if (n5 > n2) {
                if (!this.initializeAuthority(string2.substring(n2, n5))) {
                    n5 = n2 - 2;
                }
            } else {
                this.m_host = "";
            }
        }
        this.initializePath(string2, n5);
        if (uRI != null) {
            this.absolutize(uRI);
        }
    }

    public void absolutize(URI uRI) {
        int n;
        if (this.m_path.length() == 0 && this.m_scheme == null && this.m_host == null && this.m_regAuthority == null) {
            this.m_scheme = uRI.getScheme();
            this.m_userinfo = uRI.getUserinfo();
            this.m_host = uRI.getHost();
            this.m_port = uRI.getPort();
            this.m_regAuthority = uRI.getRegBasedAuthority();
            this.m_path = uRI.getPath();
            if (this.m_queryString == null) {
                this.m_queryString = uRI.getQueryString();
                if (this.m_fragment == null) {
                    this.m_fragment = uRI.getFragment();
                }
            }
            return;
        }
        if (this.m_scheme != null) {
            return;
        }
        this.m_scheme = uRI.getScheme();
        if (this.m_host != null || this.m_regAuthority != null) {
            return;
        }
        this.m_userinfo = uRI.getUserinfo();
        this.m_host = uRI.getHost();
        this.m_port = uRI.getPort();
        this.m_regAuthority = uRI.getRegBasedAuthority();
        if (this.m_path.length() > 0 && this.m_path.startsWith("/")) {
            return;
        }
        String string = "";
        String string2 = uRI.getPath();
        if (string2 != null && string2.length() > 0) {
            n = string2.lastIndexOf(47);
            if (n != -1) {
                string = string2.substring(0, n + 1);
            }
        } else if (this.m_path.length() > 0) {
            string = "/";
        }
        string = string.concat(this.m_path);
        n = -1;
        while ((n = string.indexOf("/./")) != -1) {
            string = string.substring(0, n + 1).concat(string.substring(n + 3));
        }
        if (string.endsWith("/.")) {
            string = string.substring(0, string.length() - 1);
        }
        n = 1;
        int n2 = -1;
        String string3 = null;
        while ((n = string.indexOf("/../", n)) > 0) {
            string3 = string.substring(0, string.indexOf("/../"));
            n2 = string3.lastIndexOf(47);
            if (n2 != -1) {
                if (!string3.substring(n2).equals("..")) {
                    string = string.substring(0, n2 + 1).concat(string.substring(n + 4));
                    n = n2;
                    continue;
                }
                n += 4;
                continue;
            }
            n += 4;
        }
        if (string.endsWith("/..") && (n2 = (string3 = string.substring(0, string.length() - 3)).lastIndexOf(47)) != -1) {
            string = string.substring(0, n2 + 1);
        }
        this.m_path = string;
    }

    private void initializeScheme(String string) throws MalformedURIException {
        int n = string.length();
        int n2 = 0;
        String string2 = null;
        char c = '\u0000';
        while (n2 < n) {
            c = string.charAt(n2);
            if (c == ':' || c == '/' || c == '?' || c == '#') break;
            ++n2;
        }
        if ((string2 = string.substring(0, n2)).length() == 0) {
            throw new MalformedURIException("No scheme found in URI.");
        }
        this.setScheme(string2);
    }

    private boolean initializeAuthority(String string) {
        int n;
        int n2 = 0;
        int n3 = 0;
        int n4 = string.length();
        char c = '\u0000';
        String string2 = null;
        if (string.indexOf(64, n3) != -1) {
            while (n2 < n4) {
                c = string.charAt(n2);
                if (c == '@') break;
                ++n2;
            }
            string2 = string.substring(n3, n2);
            ++n2;
        }
        String string3 = null;
        n3 = n2;
        boolean bl = false;
        if (n2 < n4) {
            if (string.charAt(n3) == '[') {
                n = string.indexOf(93, n3);
                int n5 = n2 = n != -1 ? n : n4;
                if (n2 + 1 < n4 && string.charAt(n2 + 1) == ':') {
                    ++n2;
                    bl = true;
                } else {
                    n2 = n4;
                }
            } else {
                n = string.lastIndexOf(58, n4);
                n2 = n > n3 ? n : n4;
                bl = n2 != n4;
            }
        }
        string3 = string.substring(n3, n2);
        n = -1;
        if (string3.length() > 0 && bl) {
            n3 = ++n2;
            while (n2 < n4) {
                ++n2;
            }
            String string4 = string.substring(n3, n2);
            if (string4.length() > 0) {
                try {
                    n = Integer.parseInt(string4);
                    if (n == -1) {
                        --n;
                    }
                }
                catch (NumberFormatException numberFormatException) {
                    n = -2;
                }
            }
        }
        if (this.isValidServerBasedAuthority(string3, n, string2)) {
            this.m_host = string3;
            this.m_port = n;
            this.m_userinfo = string2;
            return true;
        }
        if (this.isValidRegistryBasedAuthority(string)) {
            this.m_regAuthority = string;
            return true;
        }
        return false;
    }

    private boolean isValidServerBasedAuthority(String string, int n, String string2) {
        if (!URI.isWellFormedAddress(string)) {
            return false;
        }
        if (n < -1 || n > 65535) {
            return false;
        }
        if (string2 != null) {
            int n2 = 0;
            int n3 = string2.length();
            char c = '\u0000';
            while (n2 < n3) {
                c = string2.charAt(n2);
                if (c == '%') {
                    if (n2 + 2 >= n3 || !URI.isHex(string2.charAt(n2 + 1)) || !URI.isHex(string2.charAt(n2 + 2))) {
                        return false;
                    }
                    n2 += 2;
                } else if (!URI.isUserinfoCharacter(c)) {
                    return false;
                }
                ++n2;
            }
        }
        return true;
    }

    private boolean isValidRegistryBasedAuthority(String string) {
        int n = 0;
        int n2 = string.length();
        while (n < n2) {
            char c = string.charAt(n);
            if (c == '%') {
                if (n + 2 >= n2 || !URI.isHex(string.charAt(n + 1)) || !URI.isHex(string.charAt(n + 2))) {
                    return false;
                }
                n += 2;
            } else if (!URI.isPathCharacter(c)) {
                return false;
            }
            ++n;
        }
        return true;
    }

    /*
     * Unable to fully structure code
     */
    private void initializePath(String var1_1, int var2_2) throws MalformedURIException {
        block24: {
            if (var1_1 == null) {
                throw new MalformedURIException("Cannot initialize path from null string!");
            }
            var3_3 = var2_2;
            var4_4 = var2_2;
            var5_5 = var1_1.length();
            var6_6 = '\u0000';
            if (var4_4 >= var5_5) break block24;
            if (this.getScheme() != null && var1_1.charAt(var4_4) != '/') ** GOTO lbl32
            while (var3_3 < var5_5) {
                var6_6 = var1_1.charAt(var3_3);
                if (var6_6 == '%') {
                    if (var3_3 + 2 >= var5_5 || !URI.isHex(var1_1.charAt(var3_3 + 1)) || !URI.isHex(var1_1.charAt(var3_3 + 2))) {
                        throw new MalformedURIException("Path contains invalid escape sequence!");
                    }
                    var3_3 += 2;
                } else if (!URI.isPathCharacter(var6_6)) {
                    if (var6_6 != '?' && var6_6 != '#') {
                        throw new MalformedURIException("Path contains invalid character: " + var6_6);
                    }
                    break block24;
                }
                ++var3_3;
            }
            break block24;
            while ((var6_6 = (char)var1_1.charAt(var3_3)) != '?' && var6_6 != '#') {
                if (var6_6 == '%') {
                    if (var3_3 + 2 >= var5_5 || !URI.isHex(var1_1.charAt(var3_3 + 1)) || !URI.isHex(var1_1.charAt(var3_3 + 2))) {
                        throw new MalformedURIException("Opaque part contains invalid escape sequence!");
                    }
                    var3_3 += 2;
                } else if (!URI.isURICharacter(var6_6)) {
                    throw new MalformedURIException("Opaque part contains invalid character: " + var6_6);
                }
                ++var3_3;
lbl32:
                // 2 sources

                if (var3_3 < var5_5) continue;
            }
        }
        this.m_path = var1_1.substring(var4_4, var3_3);
        if (var6_6 == '?') {
            var4_4 = ++var3_3;
            while (var3_3 < var5_5) {
                var6_6 = var1_1.charAt(var3_3);
                if (var6_6 == '#') break;
                if (var6_6 == '%') {
                    if (var3_3 + 2 >= var5_5 || !URI.isHex(var1_1.charAt(var3_3 + 1)) || !URI.isHex(var1_1.charAt(var3_3 + 2))) {
                        throw new MalformedURIException("Query string contains invalid escape sequence!");
                    }
                    var3_3 += 2;
                } else if (!URI.isURICharacter(var6_6)) {
                    throw new MalformedURIException("Query string contains invalid character: " + var6_6);
                }
                ++var3_3;
            }
            this.m_queryString = var1_1.substring(var4_4, var3_3);
        }
        if (var6_6 == '#') {
            var4_4 = ++var3_3;
            while (var3_3 < var5_5) {
                var6_6 = var1_1.charAt(var3_3);
                if (var6_6 == '%') {
                    if (var3_3 + 2 >= var5_5 || !URI.isHex(var1_1.charAt(var3_3 + 1)) || !URI.isHex(var1_1.charAt(var3_3 + 2))) {
                        throw new MalformedURIException("Fragment contains invalid escape sequence!");
                    }
                    var3_3 += 2;
                } else if (!URI.isURICharacter(var6_6)) {
                    throw new MalformedURIException("Fragment contains invalid character: " + var6_6);
                }
                ++var3_3;
            }
            this.m_fragment = var1_1.substring(var4_4, var3_3);
        }
    }

    public String getScheme() {
        return this.m_scheme;
    }

    public String getSchemeSpecificPart() {
        StringBuffer stringBuffer = new StringBuffer();
        if (this.m_host != null || this.m_regAuthority != null) {
            stringBuffer.append("//");
            if (this.m_host != null) {
                if (this.m_userinfo != null) {
                    stringBuffer.append(this.m_userinfo);
                    stringBuffer.append('@');
                }
                stringBuffer.append(this.m_host);
                if (this.m_port != -1) {
                    stringBuffer.append(':');
                    stringBuffer.append(this.m_port);
                }
            } else {
                stringBuffer.append(this.m_regAuthority);
            }
        }
        if (this.m_path != null) {
            stringBuffer.append(this.m_path);
        }
        if (this.m_queryString != null) {
            stringBuffer.append('?');
            stringBuffer.append(this.m_queryString);
        }
        if (this.m_fragment != null) {
            stringBuffer.append('#');
            stringBuffer.append(this.m_fragment);
        }
        return stringBuffer.toString();
    }

    public String getUserinfo() {
        return this.m_userinfo;
    }

    public String getHost() {
        return this.m_host;
    }

    public int getPort() {
        return this.m_port;
    }

    public String getRegBasedAuthority() {
        return this.m_regAuthority;
    }

    public String getAuthority() {
        StringBuffer stringBuffer = new StringBuffer();
        if (this.m_host != null || this.m_regAuthority != null) {
            stringBuffer.append("//");
            if (this.m_host != null) {
                if (this.m_userinfo != null) {
                    stringBuffer.append(this.m_userinfo);
                    stringBuffer.append('@');
                }
                stringBuffer.append(this.m_host);
                if (this.m_port != -1) {
                    stringBuffer.append(':');
                    stringBuffer.append(this.m_port);
                }
            } else {
                stringBuffer.append(this.m_regAuthority);
            }
        }
        return stringBuffer.toString();
    }

    public String getPath(boolean bl, boolean bl2) {
        StringBuffer stringBuffer = new StringBuffer(this.m_path);
        if (bl && this.m_queryString != null) {
            stringBuffer.append('?');
            stringBuffer.append(this.m_queryString);
        }
        if (bl2 && this.m_fragment != null) {
            stringBuffer.append('#');
            stringBuffer.append(this.m_fragment);
        }
        return stringBuffer.toString();
    }

    public String getPath() {
        return this.m_path;
    }

    public String getQueryString() {
        return this.m_queryString;
    }

    public String getFragment() {
        return this.m_fragment;
    }

    public void setScheme(String string) throws MalformedURIException {
        if (string == null) {
            throw new MalformedURIException("Cannot set scheme from null string!");
        }
        if (!URI.isConformantSchemeName(string)) {
            throw new MalformedURIException("The scheme is not conformant.");
        }
        this.m_scheme = string.toLowerCase();
    }

    public void setUserinfo(String string) throws MalformedURIException {
        if (string == null) {
            this.m_userinfo = null;
            return;
        }
        if (this.m_host == null) {
            throw new MalformedURIException("Userinfo cannot be set when host is null!");
        }
        int n = 0;
        int n2 = string.length();
        char c = '\u0000';
        while (n < n2) {
            c = string.charAt(n);
            if (c == '%') {
                if (n + 2 >= n2 || !URI.isHex(string.charAt(n + 1)) || !URI.isHex(string.charAt(n + 2))) {
                    throw new MalformedURIException("Userinfo contains invalid escape sequence!");
                }
            } else if (!URI.isUserinfoCharacter(c)) {
                throw new MalformedURIException("Userinfo contains invalid character:" + c);
            }
            ++n;
        }
        this.m_userinfo = string;
    }

    public void setHost(String string) throws MalformedURIException {
        if (string == null || string.length() == 0) {
            if (string != null) {
                this.m_regAuthority = null;
            }
            this.m_host = string;
            this.m_userinfo = null;
            this.m_port = -1;
            return;
        }
        if (!URI.isWellFormedAddress(string)) {
            throw new MalformedURIException("Host is not a well formed address!");
        }
        this.m_host = string;
        this.m_regAuthority = null;
    }

    public void setPort(int n) throws MalformedURIException {
        if (n >= 0 && n <= 65535) {
            if (this.m_host == null) {
                throw new MalformedURIException("Port cannot be set when host is null!");
            }
        } else if (n != -1) {
            throw new MalformedURIException("Invalid port number!");
        }
        this.m_port = n;
    }

    public void setRegBasedAuthority(String string) throws MalformedURIException {
        if (string == null) {
            this.m_regAuthority = null;
            return;
        }
        if (string.length() < 1 || !this.isValidRegistryBasedAuthority(string) || string.indexOf(47) != -1) {
            throw new MalformedURIException("Registry based authority is not well formed.");
        }
        this.m_regAuthority = string;
        this.m_host = null;
        this.m_userinfo = null;
        this.m_port = -1;
    }

    public void setPath(String string) throws MalformedURIException {
        if (string == null) {
            this.m_path = null;
            this.m_queryString = null;
            this.m_fragment = null;
        } else {
            this.initializePath(string, 0);
        }
    }

    public void appendPath(String string) throws MalformedURIException {
        if (string == null || string.trim().length() == 0) {
            return;
        }
        if (!URI.isURIString(string)) {
            throw new MalformedURIException("Path contains invalid character!");
        }
        this.m_path = this.m_path == null || this.m_path.trim().length() == 0 ? (string.startsWith("/") ? string : "/" + string) : (this.m_path.endsWith("/") ? (string.startsWith("/") ? this.m_path.concat(string.substring(1)) : this.m_path.concat(string)) : (string.startsWith("/") ? this.m_path.concat(string) : this.m_path.concat("/" + string)));
    }

    public void setQueryString(String string) throws MalformedURIException {
        if (string == null) {
            this.m_queryString = null;
        } else {
            if (!this.isGenericURI()) {
                throw new MalformedURIException("Query string can only be set for a generic URI!");
            }
            if (this.getPath() == null) {
                throw new MalformedURIException("Query string cannot be set when path is null!");
            }
            if (!URI.isURIString(string)) {
                throw new MalformedURIException("Query string contains invalid character!");
            }
            this.m_queryString = string;
        }
    }

    public void setFragment(String string) throws MalformedURIException {
        if (string == null) {
            this.m_fragment = null;
        } else {
            if (!this.isGenericURI()) {
                throw new MalformedURIException("Fragment can only be set for a generic URI!");
            }
            if (this.getPath() == null) {
                throw new MalformedURIException("Fragment cannot be set when path is null!");
            }
            if (!URI.isURIString(string)) {
                throw new MalformedURIException("Fragment contains invalid character!");
            }
            this.m_fragment = string;
        }
    }

    public boolean equals(Object object) {
        if (object instanceof URI) {
            URI uRI = (URI)object;
            if ((this.m_scheme == null && uRI.m_scheme == null || this.m_scheme != null && uRI.m_scheme != null && this.m_scheme.equals(uRI.m_scheme)) && (this.m_userinfo == null && uRI.m_userinfo == null || this.m_userinfo != null && uRI.m_userinfo != null && this.m_userinfo.equals(uRI.m_userinfo)) && (this.m_host == null && uRI.m_host == null || this.m_host != null && uRI.m_host != null && this.m_host.equals(uRI.m_host)) && this.m_port == uRI.m_port && (this.m_path == null && uRI.m_path == null || this.m_path != null && uRI.m_path != null && this.m_path.equals(uRI.m_path)) && (this.m_queryString == null && uRI.m_queryString == null || this.m_queryString != null && uRI.m_queryString != null && this.m_queryString.equals(uRI.m_queryString)) && (this.m_fragment == null && uRI.m_fragment == null || this.m_fragment != null && uRI.m_fragment != null && this.m_fragment.equals(uRI.m_fragment))) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        if (this.m_scheme != null) {
            stringBuffer.append(this.m_scheme);
            stringBuffer.append(':');
        }
        stringBuffer.append(this.getSchemeSpecificPart());
        return stringBuffer.toString();
    }

    public boolean isGenericURI() {
        return this.m_host != null;
    }

    public boolean isAbsoluteURI() {
        return this.m_scheme != null;
    }

    public static boolean isConformantSchemeName(String string) {
        if (string == null || string.trim().length() == 0) {
            return false;
        }
        if (!URI.isAlpha(string.charAt(0))) {
            return false;
        }
        int n = string.length();
        int n2 = 1;
        while (n2 < n) {
            char c = string.charAt(n2);
            if (!URI.isSchemeCharacter(c)) {
                return false;
            }
            ++n2;
        }
        return true;
    }

    public static boolean isWellFormedAddress(String string) {
        if (string == null) {
            return false;
        }
        int n = string.length();
        if (n == 0) {
            return false;
        }
        if (string.startsWith("[")) {
            return URI.isWellFormedIPv6Reference(string);
        }
        if (string.startsWith(".") || string.startsWith("-") || string.endsWith("-")) {
            return false;
        }
        int n2 = string.lastIndexOf(46);
        if (string.endsWith(".")) {
            n2 = string.substring(0, n2).lastIndexOf(46);
        }
        if (n2 + 1 < n && URI.isDigit(string.charAt(n2 + 1))) {
            return URI.isWellFormedIPv4Address(string);
        }
        if (n > 255) {
            return false;
        }
        int n3 = 0;
        int n4 = 0;
        while (n4 < n) {
            char c = string.charAt(n4);
            if (c == '.') {
                if (!URI.isAlphanum(string.charAt(n4 - 1))) {
                    return false;
                }
                if (n4 + 1 < n && !URI.isAlphanum(string.charAt(n4 + 1))) {
                    return false;
                }
                n3 = 0;
            } else {
                if (!URI.isAlphanum(c) && c != '-') {
                    return false;
                }
                if (++n3 > 63) {
                    return false;
                }
            }
            ++n4;
        }
        return true;
    }

    public static boolean isWellFormedIPv4Address(String string) {
        int n = string.length();
        int n2 = 0;
        int n3 = 0;
        int n4 = 0;
        while (n4 < n) {
            char c = string.charAt(n4);
            if (c == '.') {
                if (n4 > 0 && !URI.isDigit(string.charAt(n4 - 1)) || n4 + 1 < n && !URI.isDigit(string.charAt(n4 + 1))) {
                    return false;
                }
                n3 = 0;
                if (++n2 > 3) {
                    return false;
                }
            } else {
                if (!URI.isDigit(c)) {
                    return false;
                }
                if (++n3 > 3) {
                    return false;
                }
                if (n3 == 3) {
                    char c2 = string.charAt(n4 - 2);
                    char c3 = string.charAt(n4 - 1);
                    if (c2 >= '2' && (c2 != '2' || c3 >= '5' && (c3 != '5' || c > '5'))) {
                        return false;
                    }
                }
            }
            ++n4;
        }
        return n2 == 3;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean isWellFormedIPv6Reference(String string) {
        int n = string.length();
        int n2 = 1;
        int n3 = n - 1;
        if (n <= 2) return false;
        if (string.charAt(0) != '[') return false;
        if (string.charAt(n3) != ']') {
            return false;
        }
        int[] nArray = new int[1];
        if ((n2 = URI.scanHexSequence(string, n2, n3, nArray)) == -1) {
            return false;
        }
        if (n2 == n3) {
            if (nArray[0] != 8) return false;
            return true;
        }
        if (n2 + 1 >= n3) return false;
        if (string.charAt(n2) != ':') return false;
        if (string.charAt(n2 + 1) == ':') {
            nArray[0] = nArray[0] + 1;
            if (nArray[0] > 8) {
                return false;
            }
            if ((n2 += 2) == n3) {
                return true;
            }
        } else {
            if (nArray[0] != 6) return false;
            if (!URI.isWellFormedIPv4Address(string.substring(n2 + 1, n3))) return false;
            return true;
        }
        int n4 = nArray[0];
        if ((n2 = URI.scanHexSequence(string, n2, n3, nArray)) == n3) return true;
        if (n2 == -1) return false;
        if (!URI.isWellFormedIPv4Address(string.substring(nArray[0] > n4 ? n2 + 1 : n2, n3))) return false;
        return true;
    }

    private static int scanHexSequence(String string, int n, int n2, int[] nArray) {
        int n3 = 0;
        int n4 = n;
        while (n < n2) {
            char c = string.charAt(n);
            if (c == ':') {
                if (n3 > 0 && (nArray[0] = nArray[0] + 1) > 8) {
                    return -1;
                }
                if (n3 == 0 || n + 1 < n2 && string.charAt(n + 1) == ':') {
                    return n;
                }
                n3 = 0;
            } else {
                if (!URI.isHex(c)) {
                    if (c == '.' && n3 < 4 && n3 > 0 && nArray[0] <= 6) {
                        int n5 = n - n3 - 1;
                        return n5 >= n4 ? n5 : n5 + 1;
                    }
                    return -1;
                }
                if (++n3 > 4) {
                    return -1;
                }
            }
            ++n;
        }
        return n3 > 0 && (nArray[0] = nArray[0] + 1) <= 8 ? n2 : -1;
    }

    private static boolean isDigit(char c) {
        return c >= '0' && c <= '9';
    }

    private static boolean isHex(char c) {
        return c <= 'f' && (fgLookupTable[c] & 0x40) != 0;
    }

    private static boolean isAlpha(char c) {
        return c >= 'a' && c <= 'z' || c >= 'A' && c <= 'Z';
    }

    private static boolean isAlphanum(char c) {
        return c <= 'z' && (fgLookupTable[c] & 0x30) != 0;
    }

    private static boolean isReservedCharacter(char c) {
        return c <= ']' && (fgLookupTable[c] & 1) != 0;
    }

    private static boolean isUnreservedCharacter(char c) {
        return c <= '~' && (fgLookupTable[c] & 0x32) != 0;
    }

    private static boolean isURICharacter(char c) {
        return c <= '~' && (fgLookupTable[c] & 0x33) != 0;
    }

    private static boolean isSchemeCharacter(char c) {
        return c <= 'z' && (fgLookupTable[c] & 0x34) != 0;
    }

    private static boolean isUserinfoCharacter(char c) {
        return c <= 'z' && (fgLookupTable[c] & 0x3A) != 0;
    }

    private static boolean isPathCharacter(char c) {
        return c <= '~' && (fgLookupTable[c] & 0xB2) != 0;
    }

    private static boolean isURIString(String string) {
        if (string == null) {
            return false;
        }
        int n = string.length();
        char c = '\u0000';
        int n2 = 0;
        while (n2 < n) {
            c = string.charAt(n2);
            if (c == '%') {
                if (n2 + 2 >= n || !URI.isHex(string.charAt(n2 + 1)) || !URI.isHex(string.charAt(n2 + 2))) {
                    return false;
                }
                n2 += 2;
            } else if (!URI.isURICharacter(c)) {
                return false;
            }
            ++n2;
        }
        return true;
    }

    static {
        int n = 48;
        while (n <= 57) {
            int n2 = n++;
            fgLookupTable[n2] = (byte)(fgLookupTable[n2] | 0x60);
        }
        int n3 = 65;
        while (n3 <= 70) {
            int n4 = n3;
            fgLookupTable[n4] = (byte)(fgLookupTable[n4] | 0x50);
            int n5 = n3 + 32;
            fgLookupTable[n5] = (byte)(fgLookupTable[n5] | 0x50);
            ++n3;
        }
        int n6 = 71;
        while (n6 <= 90) {
            int n7 = n6;
            fgLookupTable[n7] = (byte)(fgLookupTable[n7] | 0x10);
            int n8 = n6 + 32;
            fgLookupTable[n8] = (byte)(fgLookupTable[n8] | 0x10);
            ++n6;
        }
        fgLookupTable[59] = (byte)(fgLookupTable[59] | 1);
        fgLookupTable[47] = (byte)(fgLookupTable[47] | 1);
        fgLookupTable[63] = (byte)(fgLookupTable[63] | 1);
        fgLookupTable[58] = (byte)(fgLookupTable[58] | 1);
        fgLookupTable[64] = (byte)(fgLookupTable[64] | 1);
        fgLookupTable[38] = (byte)(fgLookupTable[38] | 1);
        fgLookupTable[61] = (byte)(fgLookupTable[61] | 1);
        fgLookupTable[43] = (byte)(fgLookupTable[43] | 1);
        fgLookupTable[36] = (byte)(fgLookupTable[36] | 1);
        fgLookupTable[44] = (byte)(fgLookupTable[44] | 1);
        fgLookupTable[91] = (byte)(fgLookupTable[91] | 1);
        fgLookupTable[93] = (byte)(fgLookupTable[93] | 1);
        fgLookupTable[45] = (byte)(fgLookupTable[45] | 2);
        fgLookupTable[95] = (byte)(fgLookupTable[95] | 2);
        fgLookupTable[46] = (byte)(fgLookupTable[46] | 2);
        fgLookupTable[33] = (byte)(fgLookupTable[33] | 2);
        fgLookupTable[126] = (byte)(fgLookupTable[126] | 2);
        fgLookupTable[42] = (byte)(fgLookupTable[42] | 2);
        fgLookupTable[39] = (byte)(fgLookupTable[39] | 2);
        fgLookupTable[40] = (byte)(fgLookupTable[40] | 2);
        fgLookupTable[41] = (byte)(fgLookupTable[41] | 2);
        fgLookupTable[43] = (byte)(fgLookupTable[43] | 4);
        fgLookupTable[45] = (byte)(fgLookupTable[45] | 4);
        fgLookupTable[46] = (byte)(fgLookupTable[46] | 4);
        fgLookupTable[59] = (byte)(fgLookupTable[59] | 8);
        fgLookupTable[58] = (byte)(fgLookupTable[58] | 8);
        fgLookupTable[38] = (byte)(fgLookupTable[38] | 8);
        fgLookupTable[61] = (byte)(fgLookupTable[61] | 8);
        fgLookupTable[43] = (byte)(fgLookupTable[43] | 8);
        fgLookupTable[36] = (byte)(fgLookupTable[36] | 8);
        fgLookupTable[44] = (byte)(fgLookupTable[44] | 8);
        fgLookupTable[59] = (byte)(fgLookupTable[59] | 0x80);
        fgLookupTable[47] = (byte)(fgLookupTable[47] | 0x80);
        fgLookupTable[58] = (byte)(fgLookupTable[58] | 0x80);
        fgLookupTable[64] = (byte)(fgLookupTable[64] | 0x80);
        fgLookupTable[38] = (byte)(fgLookupTable[38] | 0x80);
        fgLookupTable[61] = (byte)(fgLookupTable[61] | 0x80);
        fgLookupTable[43] = (byte)(fgLookupTable[43] | 0x80);
        fgLookupTable[36] = (byte)(fgLookupTable[36] | 0x80);
        fgLookupTable[44] = (byte)(fgLookupTable[44] | 0x80);
        DEBUG = false;
    }

    public static class MalformedURIException
    extends IOException {
        static final long serialVersionUID = -6695054834342951930L;

        public MalformedURIException() {
        }

        public MalformedURIException(String string) {
            super(string);
        }
    }
}

