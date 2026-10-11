/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.framework;

import java.io.InputStream;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;

public interface SurrogateBundle
extends Bundle {
    public BundleContext getCompositeBundleContext();

    public void update() throws BundleException;

    public void update(InputStream var1) throws BundleException;

    public void uninstall() throws BundleException;
}

