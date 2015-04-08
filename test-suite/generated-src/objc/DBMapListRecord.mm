// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from map.djinni

#import "DBMapListRecord+Private.h"
#import "DJIDate.h"
#import <Foundation/Foundation.h>
#include <utility>
#include <vector>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@implementation DBMapListRecord

- (id)initWithMapListRecord:(DBMapListRecord *)mapListRecord
{
    if (self = [super init]) {
        std::vector<NSDictionary *> _mapListTempVector;
        _mapListTempVector.reserve([mapListRecord.mapList count]);
        for (NSDictionary *currentValue_0 in mapListRecord.mapList) {
            NSDictionary *copiedValue_0;
            std::vector<NSString *> copiedValue_0TempKeyVector;
            copiedValue_0TempKeyVector.reserve([currentValue_0 count]);
            std::vector<NSNumber *> copiedValue_0TempValueVector;
            copiedValue_0TempValueVector.reserve([currentValue_0 count]);
            for (NSString *key_1 in currentValue_0) {
                NSNumber *copiedValue_1;
                copiedValue_0TempKeyVector.push_back(key_1);
                NSNumber *value_1 = [currentValue_0 objectForKey:key_1];
                copiedValue_1 = value_1;
                copiedValue_0TempValueVector.push_back(copiedValue_1);
            }
            copiedValue_0 = [NSDictionary dictionaryWithObjects:&copiedValue_0TempValueVector[0] forKeys:&copiedValue_0TempKeyVector[0] count:[currentValue_0 count]];
            _mapListTempVector.push_back(copiedValue_0);
        }
        _mapList = [NSArray arrayWithObjects:&_mapListTempVector[0] count:_mapListTempVector.size()];
    }
    return self;
}

- (id)initWithMapList:(NSArray *)mapList
{
    if (self = [super init]) {
        _mapList = mapList;
    }
    return self;
}

- (id)initWithCppMapListRecord:(const MapListRecord &)mapListRecord
{
    if (self = [super init]) {
        std::vector<NSDictionary *> _mapListTempVector;
        _mapListTempVector.reserve(mapListRecord.map_list.size());
        for (const auto & cppValue_0 : mapListRecord.map_list) {
            std::vector<NSString *> objcValue_0TempKeyVector;
            objcValue_0TempKeyVector.reserve(cppValue_0.size());
            std::vector<NSNumber *> objcValue_0TempValueVector;
            objcValue_0TempValueVector.reserve(cppValue_0.size());
            for (const auto & cppPair_1 : cppValue_0) {
                NSString *objcKey_1 = [[NSString alloc] initWithBytes:cppPair_1.first.data()
                        length:cppPair_1.first.length()
                        encoding:NSUTF8StringEncoding];
                NSNumber *objcValue_1 = [NSNumber numberWithLongLong:cppPair_1.second];
                objcValue_0TempKeyVector.push_back(objcKey_1);
                objcValue_0TempValueVector.push_back(objcValue_1);
            }
            NSDictionary *objcValue_0 = [NSDictionary dictionaryWithObjects:&objcValue_0TempValueVector[0] forKeys:&objcValue_0TempKeyVector[0] count:cppValue_0.size()];
            _mapListTempVector.push_back(objcValue_0);
        }
        _mapList = [NSArray arrayWithObjects:&_mapListTempVector[0] count:_mapListTempVector.size()];
    }
    return self;
}

- (MapListRecord)cppMapListRecord
{
    std::vector<std::unordered_map<std::string, int64_t>> mapList;
    mapList.reserve([_mapList count]);
    for (NSDictionary *objcValue_0 in _mapList) {
        std::unordered_map<std::string, int64_t> cppValue_0;
        for (id objcKey_1 in objcValue_0) {
            std::string cppKey_1([objcKey_1 UTF8String], [objcKey_1 lengthOfBytesUsingEncoding:NSUTF8StringEncoding]);
            int64_t cppValue_1 = [[objcValue_0 objectForKey:objcKey_1] longLongValue];
            cppValue_0.emplace(std::move(cppKey_1), std::move(cppValue_1));
        }
        mapList.push_back(std::move(cppValue_0));
    }
    return MapListRecord(
            std::move(mapList));
}

@end
