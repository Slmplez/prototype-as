/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.servlet.http.HttpServletRequest
 *  javax.servlet.http.HttpServletResponse
 */
package org.osgi.service.http;

import java.io.IOException;
import java.net.URL;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface HttpContext {
    public static final String REMOTE_USER = "org.osgi.service.http.authentication.remote.user";
    public static final String AUTHENTICATION_TYPE = "org.osgi.service.http.authentication.type";
    public static final String AUTHORIZATION = "org.osgi.service.useradmin.authorization";

    public boolean handleSecurity(HttpServletRequest var1, HttpServletResponse var2) throws IOException;

    public URL getResource(String var1);

    public String getMimeType(String var1);
}

