/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Region
 */
package org.eclipse.ui.texteditor.spelling;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Region;
import org.eclipse.ui.internal.texteditor.TextEditorPlugin;
import org.eclipse.ui.internal.texteditor.spelling.SpellingEngineRegistry;
import org.eclipse.ui.texteditor.spelling.ISpellingEngine;
import org.eclipse.ui.texteditor.spelling.ISpellingProblemCollector;
import org.eclipse.ui.texteditor.spelling.SpellingContext;
import org.eclipse.ui.texteditor.spelling.SpellingEngineDescriptor;

public class SpellingService {
    public static final String PREFERENCE_SPELLING_ENABLED = "spellingEnabled";
    public static final String PREFERENCE_SPELLING_ENGINE = "spellingEngine";
    private IPreferenceStore fPreferences;

    public SpellingService(IPreferenceStore preferences) {
        this.fPreferences = preferences;
    }

    public void check(IDocument document, SpellingContext context, ISpellingProblemCollector collector, IProgressMonitor monitor) {
        this.check(document, new IRegion[]{new Region(0, document.getLength())}, context, collector, monitor);
    }

    public void check(final IDocument document, final IRegion[] regions, final SpellingContext context, final ISpellingProblemCollector collector, final IProgressMonitor monitor) {
        block6: {
            try {
                collector.beginCollecting();
                if (!this.fPreferences.getBoolean(PREFERENCE_SPELLING_ENABLED)) break block6;
                try {
                    final ISpellingEngine engine = this.createEngine(this.fPreferences);
                    if (engine != null) {
                        ISafeRunnable runnable = new ISafeRunnable(){

                            public void run() throws Exception {
                                engine.check(document, regions, context, collector, monitor);
                            }

                            public void handleException(Throwable x) {
                            }
                        };
                        SafeRunner.run((ISafeRunnable)runnable);
                    }
                }
                catch (CoreException x) {
                    TextEditorPlugin.getDefault().getLog().log(x.getStatus());
                }
            }
            finally {
                collector.endCollecting();
            }
        }
    }

    public SpellingEngineDescriptor[] getSpellingEngineDescriptors() {
        SpellingEngineRegistry registry = this.getSpellingEngineRegistry();
        if (registry == null) {
            return new SpellingEngineDescriptor[0];
        }
        return registry.getDescriptors();
    }

    public SpellingEngineDescriptor getDefaultSpellingEngineDescriptor() {
        SpellingEngineRegistry registry = this.getSpellingEngineRegistry();
        if (registry == null) {
            return null;
        }
        return registry.getDefaultDescriptor();
    }

    public SpellingEngineDescriptor getActiveSpellingEngineDescriptor(IPreferenceStore preferences) {
        SpellingEngineRegistry registry = this.getSpellingEngineRegistry();
        if (registry == null) {
            return null;
        }
        SpellingEngineDescriptor descriptor = null;
        if (preferences.contains(PREFERENCE_SPELLING_ENGINE)) {
            descriptor = registry.getDescriptor(preferences.getString(PREFERENCE_SPELLING_ENGINE));
        }
        if (descriptor == null) {
            descriptor = registry.getDefaultDescriptor();
        }
        return descriptor;
    }

    private ISpellingEngine createEngine(IPreferenceStore preferences) throws CoreException {
        SpellingEngineDescriptor descriptor = this.getActiveSpellingEngineDescriptor(preferences);
        if (descriptor != null) {
            return descriptor.createEngine();
        }
        return null;
    }

    private SpellingEngineRegistry getSpellingEngineRegistry() {
        return TextEditorPlugin.getDefault().getSpellingEngineRegistry();
    }
}

