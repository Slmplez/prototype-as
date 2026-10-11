/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.compare.patch;

import java.io.BufferedReader;
import java.io.IOException;
import org.eclipse.compare.internal.core.patch.PatchReader;
import org.eclipse.compare.patch.IFilePatch2;
import org.eclipse.compare.patch.ReaderCreator;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;

public class PatchParser {
    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static IFilePatch2[] parsePatch(ReaderCreator content) throws CoreException {
        IFilePatch2[] iFilePatch2Array;
        BufferedReader reader = new BufferedReader(content.createReader());
        try {
            PatchReader patchReader = new PatchReader();
            patchReader.parse(reader);
            iFilePatch2Array = patchReader.getAdjustedDiffs();
        }
        catch (IOException e) {
            try {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.compare.core", 0, e.getMessage(), (Throwable)e));
            }
            catch (Throwable throwable) {
                try {
                    reader.close();
                    throw throwable;
                }
                catch (IOException iOException) {}
                throw throwable;
            }
        }
        try {
            reader.close();
            return iFilePatch2Array;
        }
        catch (IOException iOException) {}
        return iFilePatch2Array;
    }
}

