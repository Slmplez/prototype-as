/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.framework;

import java.io.InputStream;
import java.util.Map;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleException;
import org.osgi.framework.launch.Framework;
import org.osgi.service.framework.SurrogateBundle;

public interface CompositeBundle
extends Bundle {
    public Framework getCompositeFramework();

    public SurrogateBundle getSurrogateBundle();

    public void update(Map var1) throws BundleException;

    public void update() throws BundleException;

    public void update(InputStream var1) throws BundleException;

    public void uninstall() throws BundleException;
}

