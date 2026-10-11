/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.DemuxInputStream
 *  org.apache.tools.ant.Project
 */
package org.eclipse.ant.internal.core.ant;

import java.io.InputStream;
import org.apache.tools.ant.DemuxInputStream;
import org.apache.tools.ant.Project;

class DemuxInputStreamSetter {
    DemuxInputStreamSetter() {
    }

    protected void remapSystemIn(Project project) {
        System.setIn((InputStream)new DemuxInputStream(project));
    }
}

