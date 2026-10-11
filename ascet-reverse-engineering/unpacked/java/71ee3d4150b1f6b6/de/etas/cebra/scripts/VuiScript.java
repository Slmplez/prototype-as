/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  de.etas.cebra.toolAPI.VUI.GraphicalObject
 *  de.etas.cebra.toolAPI.VUI.Vui
 *  de.etas.cebra.toolAPI.VUI.VuiProxy
 */
package de.etas.cebra.scripts;

import de.etas.cebra.Cebra;
import de.etas.cebra.scripts.EventScript;
import de.etas.cebra.socket.ClientSender;
import de.etas.cebra.toolAPI.VUI.GraphicalObject;
import de.etas.cebra.toolAPI.VUI.Vui;
import de.etas.cebra.toolAPI.VUI.VuiProxy;
import de.etas.types.Identifiable;
import de.etas.types.Set;

public abstract class VuiScript
extends EventScript {
    protected Vui callingVui = null;
    private Set updatelist = new Set();

    public void addExecuteEvent(int key) {
        Set set = this.updatelist;
        synchronized (set) {
            this.updatelist.add(new Integer(key));
        }
    }

    protected void close() {
    }

    public final Vui getCallingVui() {
        if (this.callingVui == null) {
            return null;
        }
        if (this.callingVui.nullHandle()) {
            return null;
        }
        return this.callingVui;
    }

    protected final GraphicalObject getGraphicalObjectForEvent(int eventCode) {
        GraphicalObject result = GraphicalObject.getForID((Identifiable)((Identifiable)this.getObjectForEvent(eventCode)));
        if (result != null) {
            return result;
        }
        result = GraphicalObject.create((Identifiable)((Identifiable)this.getObjectForEvent(eventCode)), (ClientSender)this.getCallingVui().getSender());
        return result;
    }

    protected final void handleEvent(int event) {
        this.handleEventForGraphicalObject(this.getGraphicalObjectForEvent(event), event);
    }

    protected abstract void handleEventForGraphicalObject(GraphicalObject var1, int var2);

    protected void initialize() {
    }

    public static final VuiScript newVuiScript(String s) {
        VuiScript ergeb = null;
        if (s == null) {
            return null;
        }
        Class klasse = Cebra.getClassByName(s);
        if (klasse == null) {
            Cebra.println("Error: Creating a new instance of " + s + " failed due to the fact that it was not found in the class table.");
            return null;
        }
        try {
            ergeb = (VuiScript)klasse.newInstance();
        }
        catch (Exception exception) {
            Cebra.println("Error: Creating a new instance of " + klasse + " failed.");
            return null;
        }
        return ergeb;
    }

    public static final VuiScript newVuiScript(String s, String name) {
        VuiScript ergeb = null;
        if (s == null) {
            return null;
        }
        Class klasse = Cebra.getClassByName(s);
        if (klasse == null) {
            Cebra.println("Error: Creating a new instance of " + s + " failed due to the fact that it was not found in the class table.");
            return null;
        }
        try {
            ergeb = (VuiScript)klasse.newInstance();
        }
        catch (Exception exception) {
            Cebra.println("Error: Creating a new instance of " + klasse + " failed.");
            return null;
        }
        if (name != null) {
            ergeb.setName(name);
        }
        return ergeb;
    }

    public final void removeEvent(int event) {
        Set set = this.updatelist;
        synchronized (set) {
            this.updatelist.removeElement(new Integer(event));
        }
        super.removeEvent(event);
    }

    public final void setCallingVui(VuiProxy proxy) {
        if (proxy == null) {
            return;
        }
        this.callingVui = proxy.vui;
    }

    public final void update() {
        Object[] copyList;
        Set set = this.updatelist;
        synchronized (set) {
            copyList = new Integer[this.updatelist.size()];
            this.updatelist.copyInto(copyList);
        }
        int i = 0;
        while (i < copyList.length) {
            this.handleEvent((Integer)copyList[i]);
            ++i;
        }
    }

    public final void updateAsynchronous() {
        this.callingVui.updateAsynchronous();
    }
}

