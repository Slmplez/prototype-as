/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.ui.preferences;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.ui.internal.preferences.WorkingCopyPreferences;
import org.eclipse.ui.preferences.IWorkingCopyManager;
import org.osgi.service.prefs.BackingStoreException;

public class WorkingCopyManager
implements IWorkingCopyManager {
    private static final String EMPTY_STRING = "";
    private Map workingCopies = new HashMap();

    public IEclipsePreferences getWorkingCopy(IEclipsePreferences original) {
        if (original instanceof WorkingCopyPreferences) {
            throw new IllegalArgumentException("Trying to get a working copy of a working copy");
        }
        String absolutePath = original.absolutePath();
        IEclipsePreferences preferences = (IEclipsePreferences)this.workingCopies.get(absolutePath);
        if (preferences == null) {
            preferences = new WorkingCopyPreferences(original, this);
            this.workingCopies.put(absolutePath, preferences);
        }
        return preferences;
    }

    public void applyChanges() throws BackingStoreException {
        Collection values = this.workingCopies.values();
        WorkingCopyPreferences[] valuesArray = values.toArray(new WorkingCopyPreferences[values.size()]);
        int i = 0;
        while (i < valuesArray.length) {
            WorkingCopyPreferences prefs = valuesArray[i];
            if (prefs.nodeExists(EMPTY_STRING)) {
                prefs.flush();
            }
            ++i;
        }
    }
}

