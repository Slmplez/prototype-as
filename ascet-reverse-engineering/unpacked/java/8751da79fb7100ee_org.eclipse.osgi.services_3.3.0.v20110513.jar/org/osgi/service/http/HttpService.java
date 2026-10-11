/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.servlet.Servlet
 *  javax.servlet.ServletException
 */
package org.osgi.service.http;

import java.util.Dictionary;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import org.osgi.service.http.HttpContext;
import org.osgi.service.http.NamespaceException;

public interface HttpService {
    public void registerServlet(String var1, Servlet var2, Dictionary var3, HttpContext var4) throws ServletException, NamespaceException;

    public void registerResources(String var1, String var2, HttpContext var3) throws NamespaceException;

    public void unregister(String var1);

    public HttpContext createDefaultHttpContext();
}

