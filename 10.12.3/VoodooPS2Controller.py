#coding=utf-8
import plistlib as pl
'''
this script changes thinkpad TrackPoint(小红点)'s speed as well as adding 3 finger gestures
'''

VoodooPS2Trackpad='./kexts/VoodooPS2Controller.kext/Contents/PlugIns/VoodooPS2Trackpad.kext/Contents/Info.plist'
VoodooPS2Keyboard='./kexts/VoodooPS2Controller.kext/Contents/PlugIns/VoodooPS2Keyboard.kext/Contents/Info.plist'

TrackpadRedTrackPointpath='IOKitPersonalities,Synaptics TouchPad,Platform Profile,Default'
_3fingerGesturePath='IOKitPersonalities,ApplePS2Keyboard,Platform Profile,Default'

TrackPoint={
'MouseMultiplierX':2,
'MouseMultiplierY':2,
'MouseScrollMultiplierX':10,
'MouseScrollMultiplierY':10
}
_3fingerGesture={
'ActionSwipeDown':'3e d, 7d d, 7d u, 3e u',
'ActionSwipeLeft':'3e d, 7c d, 7c u, 3e u',
'ActionSwipeRight':'3e d, 7b d, 7b u, 3e u',
'ActionSwipeUp':'3e d, 7e d, 7e u, 3e u'
}

# http://stackoverflow.com/questions/11700798/python-accessing-values-nested-within-dictionaries
def lookup(dic, key, *keys):
    if keys:
        return lookup(dic.get(key, {}), *keys)
    return dic.get(key)

def change(file,path,data):
    plist=pl.readPlist(file)
    temp=lookup(plist,*path.split(','))
    print path
    for key, value in data.iteritems():
        print key,value
        temp[key]=value
    pl.writePlist(plist,file)

change(VoodooPS2Trackpad,TrackpadRedTrackPointpath,TrackPoint)
change(VoodooPS2Keyboard,_3fingerGesturePath,_3fingerGesture)
