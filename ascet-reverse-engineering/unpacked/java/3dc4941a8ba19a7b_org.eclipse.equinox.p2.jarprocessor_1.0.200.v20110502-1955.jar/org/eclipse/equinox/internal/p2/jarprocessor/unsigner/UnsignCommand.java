/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.jarprocessor.unsigner;

import java.io.File;
import java.util.List;
import java.util.Properties;
import org.eclipse.equinox.internal.p2.jarprocessor.SignCommandStep;
import org.eclipse.equinox.internal.p2.jarprocessor.unsigner.Unsigner;

public class UnsignCommand
extends SignCommandStep {
    public UnsignCommand(Properties options, String command, boolean verbose) {
        super(options, command, verbose);
    }

    public File postProcess(File input, File workingDirectory, List containers) {
        if (this.command != null && input != null && this.shouldSign(input, containers)) {
            this.execute(input);
        }
        return null;
    }

    private void execute(File input) {
        Unsigner jarUnsigner = new Unsigner();
        jarUnsigner.setJar(input);
        jarUnsigner.setKeepManifestEntries(false);
        jarUnsigner.execute();
    }
}

