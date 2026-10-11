/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.AntClassLoader
 *  org.apache.tools.ant.Project
 *  org.apache.tools.ant.types.Path
 */
package org.eclipse.ant.internal.core.ant;

import org.apache.tools.ant.AntClassLoader;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.types.Path;

public class InternalProject2
extends Project {
    public AntClassLoader createClassLoader(Path path) {
        AntClassLoader loader = super.createClassLoader(path);
        if (path == null) {
            loader.setClassPath(Path.systemClasspath);
        }
        return loader;
    }
}

