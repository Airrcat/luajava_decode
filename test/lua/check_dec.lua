local L0_1, L1_1

function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = getmetatable
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    L5_2 = L4_2.__env
    if L5_2 ~= nil then
      goto lbl_17
    end
  end
  L5_2 = error
  L6_2 = string
  L6_2 = L6_2.format
  L7_2 = "can not reg then table %s"
  L8_2 = A0_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = 2
  L5_2(L6_2, L7_2)
  ::lbl_17::
  L5_2 = L4_2.__env
  L6_2 = {}
  L6_2.id = A1_2
  L6_2.field = A3_2
  L5_2[A2_2] = L6_2
end

reg = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = getmetatable
  L2_2 = env
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.__env
    if L2_2 ~= nil then
      goto lbl_17
    end
  end
  L2_2 = error
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "can not unreg then table %s"
  L5_2 = env
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 2
  L2_2(L3_2, L4_2)
  ::lbl_17::
  L2_2 = L1_2.__env
  L2_2[A0_2] = nil
end

unreg = L0_1

function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = getmetatable
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    L5_2 = L4_2.__env
    if L5_2 ~= nil then
      goto lbl_19
    end
  end
  L5_2 = error
  L6_2 = string
  L6_2 = L6_2.format
  L7_2 = "can not new value %s %s %s"
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = 2
  L5_2(L6_2, L7_2)
  ::lbl_19::
  if A2_2 == nil then
    L5_2 = error
    L6_2 = string
    L6_2 = L6_2.format
    L7_2 = "%q no type"
    L8_2 = A1_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = 2
    L5_2(L6_2, L7_2)
  end
  L5_2 = L4_2.__env
  L6_2 = {}
  L7_2 = A2_2 or L7_2
  if not A2_2 then
    L7_2 = type
    L8_2 = A3_2
    L7_2 = L7_2(L8_2)
  end
  L6_2.type = L7_2
  L6_2.value = A3_2
  L5_2[A1_2] = L6_2
end

new = L0_1

function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = getmetatable
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    L5_2 = L4_2.__env
    if L5_2 ~= nil then
      goto lbl_19
    end
  end
  L5_2 = error
  L6_2 = string
  L6_2 = L6_2.format
  L7_2 = "can not final value %s %s %s"
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = 2
  L5_2(L6_2, L7_2)
  ::lbl_19::
  L5_2 = L4_2.__env
  L6_2 = L5_2[A1_2]
  if L6_2 then
    L6_2 = L5_2[A1_2]
    L6_2.final = true
    return
  end
  if A2_2 == nil then
    L6_2 = error
    L7_2 = string
    L7_2 = L7_2.format
    L8_2 = "%q no type"
    L9_2 = A1_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = 2
    L6_2(L7_2, L8_2)
  end
  L6_2 = {}
  L7_2 = A2_2 or L7_2
  if not A2_2 then
    L7_2 = type
    L8_2 = A3_2
    L7_2 = L7_2(L8_2)
  end
  L6_2.type = L7_2
  L6_2.value = A3_2
  L6_2.final = true
  L5_2[A1_2] = L6_2
end

final = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2
  L2_2 = {}
  L3_2 = getmetatable
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = setmetatable
  L5_2 = L1_2
  L6_2 = {}
  L6_2.__old = L3_2
  L6_2.__env = L2_2
  
  function L7_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L3_3 = L2_2[A1_3]
    if L3_3 then
      L4_3 = L3_3.id
      if L4_3 then
        L3_3.value = A2_3
        L4_3 = L3_3.id
        L5_3 = L3_3.field
        L4_3[L5_3] = A2_3
      else
        L4_3 = L3_3.type
        if L4_3 then
          L4_3 = L3_3.final
          if L4_3 then
            L4_3 = L3_3.value
            if L4_3 then
              L4_3 = error
              L5_3 = string
              L5_3 = L5_3.format
              L6_3 = "\"%s\" is final,value=%s"
              L7_3 = A1_3
              L8_3 = L3_3.value
              L5_3 = L5_3(L6_3, L7_3, L8_3)
              L6_3 = 2
              L4_3(L5_3, L6_3)
            end
          end
          L4_3 = type
          L5_3 = A2_3
          L4_3 = L4_3(L5_3)
          L5_3 = L3_3.type
          if L4_3 == L5_3 then
            L3_3.value = A2_3
          else
            L4_3 = error
            L5_3 = string
            L5_3 = L5_3.format
            L6_3 = "type error \"%s\",%s (%s expected, got %s)"
            L7_3 = A1_3
            L8_3 = A2_3
            L9_3 = L3_3.type
            L10_3 = type
            L11_3 = A2_3
            L10_3, L11_3 = L10_3(L11_3)
            L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
            L6_3 = 2
            L4_3(L5_3, L6_3)
          end
        end
      end
    else
      L4_3 = L3_2
      if L4_3 then
        L4_3 = L3_2.__newindex
        if L4_3 then
          L4_3 = L3_2.__newindex
          L5_3 = A0_3
          L6_3 = A1_3
          L7_3 = A2_3
          L4_3(L5_3, L6_3, L7_3)
      end
      else
        L4_3 = {}
        L5_3 = type
        L6_3 = A2_3
        L5_3 = L5_3(L6_3)
        L4_3.type = L5_3
        L4_3.value = A2_3
        L2_2[A1_3] = L4_3
      end
    end
  end
  
  L6_2.__newindex = L7_2
  
  function L7_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = L2_2[A1_3]
    if L2_3 then
      L3_3 = L2_2[A1_3]
      L3_3 = L3_3.value
      return L3_3
    else
      L3_3 = L3_2
      if L3_3 then
        L3_3 = L3_2.__index
        if L3_3 then
          L3_3 = L3_2.__index
          L4_3 = A0_3
          L5_3 = A1_3
          return L3_3(L4_3, L5_3)
        end
      end
    end
  end
  
  L6_2.__index = L7_2
  L4_2(L5_2, L6_2)
end

check = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = getmetatable
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = setmetatable
    L3_2 = A0_2
    L4_2 = L1_2.__old
    L2_2(L3_2, L4_2)
  end
end

uncheck = L0_1
