/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.input.DefaultInputHandler
 */
package org.eclipse.ant.internal.core.ant;

import java.io.IOException;
import java.io.InputStream;
import org.apache.tools.ant.input.DefaultInputHandler;

public class FailInputHandler
extends DefaultInputHandler {
    protected InputStream getInputStream() {
        return new InputStream(){

            public int read() throws IOException {
                throw new IOException();
            }
        };
    }
}

