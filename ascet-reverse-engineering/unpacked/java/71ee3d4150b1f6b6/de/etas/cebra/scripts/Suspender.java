/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.scripts;

import de.etas.cebra.scripts.Script;
import de.etas.cebra.scripts.ScriptScheduler;
import de.etas.multitasking.Semaphore;

final class Suspender
extends Thread {
    Script script;
    Semaphore sema;

    public void run() {
        ScriptScheduler.suspendScript0(this.script);
        this.sema.Put();
    }

    Suspender() {
    }
}

